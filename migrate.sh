#!/bin/bash
#Migration script. Parameters: api version

echo "api version to migrate to:"
read version
echo "Performing migration to $version"

#performing backup and restarting backup process
cd /opt/backup/
nohup ./backup.sh &

#upgrading on prod
cd /opt/compose/prod/

#replacing java api with newer version
cp /opt/artifacts/$version.jar /opt/compose/prod/movieapi.jar
docker compose stop api
docker compose rm -f api
docker compose build api --no-cache

#upgrading database
wget -O /opt/sql/$version.sql https://raw.githubusercontent.com/robinmarionneau/projet/main/$>
docker compose exec -T db mysql -umovie -p"password" dbmovie < /opt/sql/$version.sql

#restarting api
docker compose up -d --no-deps api
