#! /bin/sh

set -eu

export VOLUME_DOCKER="persona_volume"
export NETWORK_DOCKER="persona_network"

export HOST_MYSQL="mysql"
export USER_MYSQL="root"
export PASS_MYSQL="persona_secret"
export DB_MYSQL="db_persona"

echo -e "\e[33mStart Process\e[0m"
echo -e "\e[31mSET ENV Docker:create \e[0m\e[32mvolume=\e[0m\e[33m${VOLUME_DOCKER}\e[0m \e[32mnetwork=\e[0m\e[33m${NETWORK_DOCKER} \n\e[0m"

# Remove old log file if it exists
if ls logs | grep -q "log-dev.log"; then
    rm -f logs/log-dev.log
fi

# Create Docker volume if it does not exist
if ! docker volume ls | grep -q "${VOLUME_DOCKER}"; then
    docker volume create "${VOLUME_DOCKER}"
    echo "create a ${VOLUME_DOCKER}" >> logs/log-dev.log && docker volume ls >> logs/log-dev.log
fi

# Create Docker network if it does not exist
if ! docker network ls | grep -q "${NETWORK_DOCKER}"; then
    docker network create "${NETWORK_DOCKER}"
    echo "create a ${NETWORK_DOCKER}" >> logs/log-dev.log && docker network ls >> logs/log-dev.log
fi

echo -e "\e[31mprocess:[0/2]\e[0m"
echo -e "\e[32mcreate a volume:[1/2]\n\e[0m"
docker volume ls
echo -e "\e[32m\ncreate network:[2/2]\n\e[0m"
docker network ls

# Remove existing containers if there are more than one
container_count=$(docker ps -a | tail -n +2 | wc -l)
if [ "$container_count" -gt 1 ]; then
    docker ps -a | tail -n +2 | awk '{print $1}' | xargs docker rm -f
else
    echo -e "\e[31mThere are less than 2 containers. No action taken.\e[0m"
fi

# Run MySQL container
docker run --rm --name mysql-persona -d -p 3306:3306 \
--network ${NETWORK_DOCKER} --network-alias mysql \
-v "${VOLUME_DOCKER}:/var/lib/mysql" \
-e MYSQL_ROOT_PASSWORD=${PASS_MYSQL} \
-e MYSQL_DATABASE=${DB_MYSQL} \
mysql:8.0

# Wait for MySQL to start
echo -e "\e[33mWaiting for MySQL to start...\e[0m"
sleep 5

# Create a SQL file to initialize the database
cat <<EOF > init_db.sql
ALTER USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY '${PASS_MYSQL}';
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;
EOF

# Run the SQL file in the MySQL container
docker exec -i mysql-persona mysql -u${USER_MYSQL} -p${PASS_MYSQL} ${DB_MYSQL} < init_db.sql

# Run the game server container
docker run --rm -d -p 7777:7777 -p 7777:7777/udp \
-v "$(pwd):/home/user/" \
--network ${NETWORK_DOCKER} \
-e MYSQL_HOST=${HOST_MYSQL} \
-e MYSQL_USER=${USER_MYSQL} \
-e MYSQL_PASSWORD=${PASS_MYSQL} \
-e MYSQL_DATABASE=${DB_MYSQL} \
beok159/samp-server

echo -e "\e[33m\nEnding Process Up\e[0m"
