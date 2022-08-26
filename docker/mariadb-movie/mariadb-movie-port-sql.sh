# create a MariaDB container with a movie database
# tables movies, stars, play are created
# some init data is added
docker run --detach \
	--name maria-movie \
	--env MYSQL_DATABASE=dbmovie \
	--env MYSQL_USER=movie \
	--env MYSQL_PASSWORD=password \
	--env MYSQL_ROOT_PASSWORD=password \
	-v ${PWD}/scripts:/docker-entrypoint-initdb.d \
	-p 3307:3306 \
	mariadb:10.9.2

