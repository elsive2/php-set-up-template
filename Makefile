PHP_CONTAINER := php
MYSQL_CONTAINER := mysqlHost

build:
	docker-compose up -d
	