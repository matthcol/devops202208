# some examples of docker exec commands with the Maria DB container
docker exec -it maria-movie mysql -u root -p
docker exec -it maria-movie mysql -u root -p dbmovie
docker exec -it maria-movie mysql -u movie -p dbmovie
docker exec -it maria-movie bash
docker exec -it maria-movie mysql -u movie -p dbmovie -e "select count(*) from movies"
docker exec -it maria-movie mysql -u movie -p dbmovie -e "select title,year from movies"

