#!/bin/bash

# delete DB container and keep data volume
docker stop maria-movie
docker rm maria-movie
