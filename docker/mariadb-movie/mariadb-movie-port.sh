docker run --detach \
	--name maria-movie \
	--env MYSQL_DATABASE=dbmovie \
	--env MYSQL_USER=movie \
	--env MYSQL_PASSWORD=password \
	--env MYSQL_ROOT_PASSWORD=password \
	-p 3307:3306 \
	mariadb:10.9.2

