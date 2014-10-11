#!/bin/bash
/etc/init.d/postgresql restart
su postgres -c "createdb -E UTF8 formation"
su postgres -c "psql -d formation -c 'CREATE EXTENSION postgis;'"