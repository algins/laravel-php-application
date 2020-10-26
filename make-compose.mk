compose-setup:
	docker-compose build
	docker-compose run --rm app make setup

compose-start:
	docker-compose up

compose-down:
	docker-compose down -v

compose-bash:
	docker-compose run app bash

compose-migrate:
	docker-compose run app make migrate

compose-console:
	docker-compose run app make console

compose-log:
	docker-compose run app make log

compose-test:
	docker-compose run app make test

compose-lint:
	docker-compose run app make lint

compose-watch:
	docker-compose run app make watch
