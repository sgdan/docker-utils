
BUSY = docker-compose run --rm busybox
UTILS = docker-compose run --rm docker-utils

.env:
	$(BUSY) cp .env.example .env

.build: .env Dockerfile
	docker-compose build docker-utils
	$(BUSY) touch .build

# force re-build without using docker cache
rebuild:
	docker-compose build --no-cache docker-utils
	$(BUSY) touch .build

shell: .build
	$(UTILS)

test: .build
	$(UTILS) ./scripts/test.sh

clean:
	docker-compose down --remove-orphans
	rm .build
