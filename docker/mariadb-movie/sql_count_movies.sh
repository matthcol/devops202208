#!/bin/bash
docker exec -it maria-movie mysql -u movie -p dbmovie \
	-e "select count(*) as movie_count from movies"
