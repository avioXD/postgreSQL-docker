#!/bin/bash

# Set the password
export PGPASSWORD="${DATABASE_PASSWORD}"

# Run pg_dump with TCP/IP connection parameters
pg_dump -U "${DATABASE_USER}" -d "${DATABASE_NAME}" -h localhost -p 5432 > /backup/backup_$(date +%Y%m%d%H%M%S).sql
