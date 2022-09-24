#!/bin/bash
TAG=`date +"%Y-%m-%d"`
BACKUP_FILENAME="_dbmovie_dump.sql"
BACKUP_DIR="./backup"
BACKUP_PATH=${BACKUP_DIR}/${TAG}${BACKUP_FILENAME}

echo "Enter password:"

docker exec -it maria-movie mysqldump -u root -p dbmovie \
	> ${BACKUP_DIR}/${TAG}${BACKUP_FILENAME}

# with password prompt, we have an extra line in the dump
sed -i -e "1d" ${BACKUP_PATH}

echo "Backup done: ${BACKUP_PATH}"
