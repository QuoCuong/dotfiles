#!/bin/bash

SRC_DATABASE="edu-test"
DES_DATABASE="edu-dev"
DATE=(date +"%Y-%m-%d_%H:%M:%S")
DES_FILE="$HOME/Documents/edu/edu-schema_$DATE.sql"

mysqldump --host=database-mysql-2.cc4bp5vdpz2g.ap-southeast-1.rds.amazonaws.com --port=3306 --default-character-set=utf8 --user=edu --password=edu --protocol=tcp --skip-triggers $SRC_DATABASE > $DES_FILE

sed -i 's/utf8mb4_0900_ai_ci/utf8mb4_unicode_ci/g' $DES_FILE
sed -i '/50013 DEFINER=/d' $DES_FILE

mysql --protocol=tcp --host=127.0.0.1 --user=dev --password=dev --port=3306 --default-character-set=utf8 --comments --database=$DES_DATABASE  < $DES_FILE
