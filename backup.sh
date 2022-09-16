#!/bin/sh

#automated database backup
while true
do
  name=$(date +"%d-%m-%y-%T").sql
  echo "Saving: $name"
  cd /opt/compose/prod
  docker compose exec db sh -c 'exec mysqldump --all-databases -umovie -p"password"' > /opt/b>
  sleep 21600
done
