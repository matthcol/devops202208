#!/bin/bash
# restore DB Movie after a complete crash
# no container, no data

# create volume
./mariadb-movie-create-data-volume.sh

# create the container mounting the backup directory in 
# /docker-entrypoint-initdb.d/ 
docker run --detach \
	--name maria-movie \
	--env MYSQL_DATABASE=dbmovie \
	--env MYSQL_USER=movie \
	--env MYSQL_PASSWORD=password \
	--env MYSQL_ROOT_PASSWORD=password \
	-v dbdata-movie:/var/lib/mysql \
	-v ${PWD}/backup:/docker-entrypoint-initdb.d \
	-p 3306:3306 \
	mariadb:10.9
