FROM ubuntu:vivid
MAINTAINER Yves Jacolin <yjacolin@free.fr>

ADD apt-qgis /etc/apt/sources.list.d/
RUN gpg --keyserver keyserver.ubuntu.com --recv DD45F6C3
RUN gpg --export --armor DD45F6C3 | apt-key add -

# Common apps
RUN apt-get update && apt-get install -y \
  vim \
  git \
  wget \
  curl \
  unzip

# Apache and dependencies
RUN apt-get install -y \
  apache2 \
  libapache2-mod-php5 \
  libapache2-mod-fcgid \
  php5-pgsql \
  php5-cli \
  php5-cgi \
  php5 \
  php5-gd


RUN apt-get install -y \
  postgresql-common \
  postgresql-client \
  postgresql-contrib \
  postgresql \
  libpq5

RUN apt-get install -y \
  qgis-mapserver
  
RUN a2enmod expires
RUN a2enmod rewrite
RUN a2enmod fcgid
ADD qgis-web-client.conf /etc/apache2/sites-available/
RUN a2ensite qgis-web-client
