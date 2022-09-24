# Docker

## 1. mariadb-movie
Run docker mariadb with a movie db (tables and data)

## 2.postgres-movie
Run docker postgresql with a movie db (tables and data)

## 3. mariadb-composition
Run docker composition with mariadb and php-myadmin

## 4. movieapi-solo
Run docker with springboot rest api.

NB: Copy artifact moviapi.jar in this directory.

### Build Image from OpenJDK JRE and api artifact
- docker build -t movieapi:2.0 .

### Run container
- docker docker run --name movieapi -d -p 8080:8080 movieapi:2.0

## 5. wildfly-mariadb
Docker composition with wildfly and a api rest configured with its datasource