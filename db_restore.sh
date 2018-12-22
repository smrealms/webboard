#!/bin/bash -e

if [[ -z "$1" ]]; then
    echo "ERROR: Must specify a database backup to restore from."
    exit 1
fi

cat $1 | docker exec -i webboard-mysql sh -c 'mysql -usmr_cnn -p$MYSQL_PASSWORD smr_cnn'
