#!/bin/bash

# http://juliendubreuil.fr/blog/drupal/installer-drush-pour-administrer-drupal/

service mysql start
service apache2 start
# wrong command, we don't know root password :/
mysqladmin -p create georezo 
drush make grz_portal.make
drush si georezo --db-url=mysql://georezo:georezo@localhost/georezo --db-su=root --db-su-pw=georezo

