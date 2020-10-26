# laravel-php-application

### Requirements

  * PHP ^7.3.0
  * Extensions:
    - bcmath
    - ctype
    - fileinfo
    - json
    - mbstring
    - openssl
    - pdo
    - pgsql
    - sqlite3
    - tokenizer
    - xml
    - zip
  * Composer
  * Node.js & npm
  * SQLite

  or 

  * Docker

### Setup

Update `.env.example`
```
DB_CONNECTION=sqlite
```

```sh
$ make setup
$ make start # Open http://localhost:8000
```

### Setup in Docker

Update `.env.example`
```
DB_CONNECTION=pgsql
DB_HOST=db
DB_DATABASE=postgres
DB_USERNAME=postgres
DB_PASSWORD=password
```

```sh
$ make compose-setup
$ make compose-start # Open http://localhost:3000
```
