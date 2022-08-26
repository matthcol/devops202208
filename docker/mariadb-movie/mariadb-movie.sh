docker run --detach \
	--name maria-movie \
	--env MYSQL_DATABASE=dbmovie \
	--env MYSQL_USER=movie \
	--env MYSQL_PASSWORD=password \
	--env MYSQL_ROOT_PASSWORD=password \
	mariadb:10.9.2

