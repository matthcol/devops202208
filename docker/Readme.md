# Docker

## mariadb-movie
Run docker mariadb with a movie db (tables and data)

## movieapi-solo
Run docker with springboot rest api.

NB: Copy artifact moviapi.jar in this directory.

### Build Image from OpenJDK JRE and api artifact
- docker build -t movieapi:2.0 .
### Run container
- docker docker run --name movieapi -d -p 8080:8080 movieapi:2.0