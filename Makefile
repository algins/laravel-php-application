include make-compose.mk

setup:
	cp -n .env.example .env || true
	touch database/database.sqlite
	composer install
	npm install
	php artisan key:generate
	php artisan migrate --seed

start:
	php artisan serve --host 0.0.0.0

migrate:
	php artisan migrate

console:
	php artisan tinker

log:
	tail -f storage/logs/laravel.log

test:
	php artisan test

lint:
	composer phpcs

watch:
	npm run watch
