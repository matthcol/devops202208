#!/bin/bash
docker exec -it maria-movie mysql -u movie -p dbmovie \
	-e "select title, year from movies"
