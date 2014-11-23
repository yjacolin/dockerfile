FROM debian:stable
MAINTAINER Yves Jacolin <yjacolin@free.fr>

# Common apps
RUN apt-get update && apt-get install -y vim git wget curl

# MapServer and dependencies
RUN apt-get install -y apache2 libapache2-mod-php5 php5-pgsql php5-mysql php5-cli php5-cgi php5 php5-gd
#RUN apt-get install -y mariadb-client mariadb-server mariadb-common
RUN apt-get install -y mysql-client mysql-server mysql-common
RUN apt-get install -y postgresql-common postgresql-client postgresql-contrib postgresql libpq5

RUN a2enmode expires
RUN a2enmod rewrite
RUN service apache2 reload

# https://github.com/drush-ops/drush
RUN mkdir /home/georezo/ && cd /home/georezo && git clone git@github.com:drush-ops/drush.git && chmod u+x drush && ln -s /home/georezo/drush/drush /usr/bin/drush
RUN curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer && ln -s /usr/local/bin/composer /usr/bin/composer && sed -i '1i export PATH="$HOME/.composer/vendor/bin:$PATH"' $HOME/.bashrc && source $HOME/.bashrc && composer global require drush/drush:dev-master 

# Let's hack around setting up ssh key to clone a private github repo.
#RUN mkdir -p /root/.ssh
#ADD id_rsa /root/.ssh/id_rsa
#RUN chmod 700 /root/.ssh/id_rsa
#RUN echo "Host github.com\n\tStrictHostKeyChecking no\n" >> /root/.ssh/config

# GeoRezo
RUN cd /home/georezo && git clone git@gitlab.com:georezo3/grz_theme.git /home/georezo/grz_theme
RUN cd /home/georezo && git clone git@gitlab.com:georezo3/grz_drush.git grz_portal

ADD start.sh /start.sh
RUN chmod 0755 /start.sh
CMD /start.sh
