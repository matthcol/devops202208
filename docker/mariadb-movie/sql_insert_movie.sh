#!/bin/bash
# !!! WARNING: script not protected for SQL injection !!!
if [ $# -ne 2 ]
then
	>&2 echo "Need 2 args: TITLE YEAR"
	exit -1
fi

TITLE="$1"
YEAR="$2"

docker exec -it maria-movie mysql -u movie -p dbmovie \
	-e "insert into movies (title, year) values ('${TITLE}', ${YEAR})"
