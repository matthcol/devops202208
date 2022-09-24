# some commands to execute inside PostgreSQL conatainer
docker exec -it pg-movie psql -U movie -d dbmovie 
docker exec -it pg-movie psql -U movie -d dbmovie -c "select title,year from movies"
