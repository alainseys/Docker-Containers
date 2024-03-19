#!/bin/sh

# Load Variables from .env file
if [ -f .env ]; then
    export $(cat .env | grep -v '^#' | xargs)
fi

backup_file="/backup/backup_$(date +'%Y%m%d_%H%M%S').sql"
# Create a backup
mysqldump -hphpipam-mysqlcontainer -uroot -p"${MYSQL_ROOT_PASSWORD}" ${DATABASE_NAME} > "$backup_file"