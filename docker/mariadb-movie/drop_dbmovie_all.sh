#!/bin/bash

# delete DB container and data volume !!
docker stop maria-movie
docker rm maria-movie
docker volume rm dbdata-movie
