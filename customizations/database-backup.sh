#!/usr/bin/env bash
cd /data/wordpress
mkdir -p customizations/backups
cd customizations/backups

echo "Exporting the database..."

# This shouldn't lock the database, right? RIGHT?
mysqldump -uvagrant -pvagrant -h127.0.0.1 --all-databases --single-transaction > $(date +%s).sql

echo "Cleaning old databases that are over 7 days old..."
find ./*.sql -mtime +7 -type f -delete
