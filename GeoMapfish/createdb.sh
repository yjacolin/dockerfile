#!/bin/bash
/etc/init.d/postgresql restart
su postgres -c "createdb -E UTF8 demo"
su postgres -c "psql -d demo -c 'CREATE EXTENSION postgis;'"