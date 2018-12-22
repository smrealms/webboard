#!/bin/bash -e

today="$(date +'%Y-%m-%d_%H-%M')"
mkdir -p backup
docker-compose exec mysql sh -c 'mysqldump -usmr_cnn -p$MYSQL_PASSWORD' > backup/smr_cnn_${today}.sql
