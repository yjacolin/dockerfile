FROM debian:stable
MAINTAINER Yves Jacolin <yjacolin@free.fr>

# Common apps
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -y \
  apt-utils \
  vim \
  git \
  wget \
  curl \
  unzip

# MapServer and dependencies
RUN apt-get install -y \
  apache2 \
  libapache2-mod-php5 \
  php5-pgsql \
  php5-mysql \
  php5-cli \
  php5-cgi \
  php5 \
  php5-gd

#RUN apt-get install -y mariadb-client mariadb-server mariadb-common
RUN apt-get install -y \
  mysql-client \
  mysql-server \
  mysql-common

RUN apt-get install -y \
  postgresql-common \
  postgresql-client \
  postgresql-contrib \
  postgresql \
  libpq5

RUN a2enmod expires
RUN a2enmod rewrite
ADD georezo /etc/apache2/sites-available/
RUN a2ensite georezo
RUN service apache2 reload

# https://github.com/drush-ops/drush
RUN cd /root && git clone https://github.com/drush-ops/drush.git && chmod u+x drush && ln -s /root/drush/drush /usr/bin/drush

ADD start.sh /start.sh
RUN chmod 0755 /start.sh
