FROM yjacolin/trainings:latest
MAINTAINER Yves Jacolin <yjacolin@free.fr>

# PostgreSQL/PostGIS and dependencies
RUN locale-gen fr_FR.UTF-8
ENV LANG fr_FR.UTF-8  
ENV LANGUAGE fr_FR:fr
ENV LC_ALL fr_FR.UTF-8 

RUN apt-get install -y postgresql-9.3 postgresql-contrib postgresql-9.3-pgpool2 postgresql-9.3-slony1-2
RUN apt-get install -y postgresql-9.3-postgis-2.1 postgresql-9.3-postgis-2.1-scripts postgis  
RUN apt-get install -y ssh-client
RUN pg_dropcluster --stop 9.3 main
RUN pg_createcluster --locale C -e UTF8 -p 5432 --start 9.3 main
RUN /etc/init.d/postgresql restart
ADD createdb.sh /createdb.sh
RUN chmod 770 /createdb.sh
RUN /createdb.sh




