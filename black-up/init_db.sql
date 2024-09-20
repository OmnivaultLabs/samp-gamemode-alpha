ALTER USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY 'persona_secret';
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;
