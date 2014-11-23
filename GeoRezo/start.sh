#!/bin/bash

# http://juliendubreuil.fr/blog/drupal/installer-drush-pour-administrer-drupal/

# mysqladmin -p create georezo
drush si georezo --db-url=mysql://georezo:georezo@localhost/georezo --db-su=root --db-su-pw=georezo
#drush make grz_portal.make

