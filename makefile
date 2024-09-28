build-container:
	./build.sh

run:
	docker compose up --build

run-bg:
	docker compose up --build -d

shutdown:
	docker compose down --volumes
