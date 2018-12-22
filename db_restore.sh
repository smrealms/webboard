#!/bin/bash -e

if [[ -z "$1" ]]; then
    echo "ERROR: Must specify a database backup to restore from."
    exit 1
fi

cat $1 | docker exec -i webboard-mysql mysql -usmr_cnn -p$MYSQL_PASSWORD smr_cnn
