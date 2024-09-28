
.PHONY: build-container run run-bg shutdown install-inc-serv

install-inc-serv:
	cp -r $(shell pwd)/libserver/*.inc $(shell pwd)/include/

build-container:
	./build.sh

run:
	docker compose up --build

run-bg:
	docker compose up --build -d

shutdown:
	docker compose down --volumes
