FROM yjacolin/trainings:latest
MAINTAINER Yves Jacolin <yjacolin@free.fr>

# PostgreSQL/PostGIS and dependencies
RUN apt-get install -y postgresql-9.3 postgresql-contrib postgresql-9.3-pgpool2 postgresql-9.3-slony1-2
RUN apt-get install -y postgresql-9.3-postgis-2.1 postgresql-9.3-postgis-2.1-scripts postgis  
RUN apt-get install -y ssh-client
RUN su postgres -c "createdb -E UTF8 formation"
RUN su postgres -c "psql -d formation -c 'CREATE EXTENSION postgis;'"




