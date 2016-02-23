#!/bin/bash

__mod_user() {
usermod -G wheel postgres
}

__create_db() {
su --login postgres --command "/usr/bin/postgres -D /var/lib/pgsql/data -p 5432" &
sleep 10

su --login - postgres --command "psql -c \"CREATE USER laura with CREATEROLE superuser PASSWORD 'laura';\""
su --login - postgres --command "psql -c \"CREATE DATABASE dockerdb;\""
}

# Call functions
__mod_user
__create_db
