#!/bin/bash

# Execute custom actions on startup. The script name starts with "00",
# so it gets executed before the *.sql files defining the schema.

# Allow to define a custom name for the PACS database when starting a
# container using MYSQL_DATABASE environmental variable
cd /docker-entrypoint-initdb.d/ && for file in *.sql; do
    echo "use $MYSQL_DATABASE;" > tmp.sql
    cat $file >> tmp.sql
    rm $file
    mv tmp.sql $file
done
