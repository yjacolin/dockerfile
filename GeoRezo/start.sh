#!/bin/bash

echo "Getting drush command"
curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer && ln -s /usr/local/bin/composer /usr/bin/composer && sed -i '1i export PATH="$HOME/.composer/vendor/bin:$PATH"' $HOME/.bashrc && source $HOME/.bashrc && composer global require drush/drush:dev-master 

# http://juliendubreuil.fr/blog/drupal/installer-drush-pour-administrer-drupal/

echo "Starting apache and MySQL"
service mysql start
service apache2 start

echo "Setting root MySQL DB password"
mysqladmin -u root password georezo
echo "Creating MySQL DB"
mysqladmin --password=georezo create georezo 
echo "Creating MySQL DB user"
mysql --password=georezo -e "CREATE USER 'georezo'@'localhost' IDENTIFIED BY 'georezo';"
mysql --password=georezo -e "GRANT ALL PRIVILEGES ON * . * TO 'georezo'@'localhost';"
mysqladmin --password=georezo reload

echo "First run of GeoRezo make command"
cd /home/georezo/grz_portal/
drush make grz_portal.make
drush si georezo_profile --db-url=mysql://georezo:georezo@localhost/georezo --db-su=root --db-su-pw=georezo --site-name=GeoRezo --site-mail=noreply@georezo.net --account-name=editeur --account-mail=editeur@georezo.net --account-pass=editeur
