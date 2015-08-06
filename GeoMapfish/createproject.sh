#!/bin/bash

mkdir /home/geomapfish && cd /home/geomapfish && git clone https://github.com/camptocamp/c2cgeoportal.git
cd /home/geomapfish/c2cgeoportal && git checkout 1.5 && git submodule update --init
python bootstrap.py --version 1.5.2 --distribute --download-base http://pypi.camptocamp.net/distribute-0.6.22_fix-issue-227/ --setup-source http://pypi.camptocamp.net/distribute-0.6.22_fix-issue-227/distribute_setup.py

  ./buildout/bin/buildout

PROJECT=demo
./buildout/bin/pcreate -s c2cgeoportal_create ../$PROJECT
./buildout/bin/pcreate -s c2cgeoportal_update ../$PROJECT

cd ../$PROJECT
chmod +x deploy/hooks/post-restore-database.in
rm buildout_child.cfg config_child.yaml.in



# cd ..
# git init
# git add $PROJECT/ .gitignore config.yaml.in \
#         versions.cfg README.rst CONST_CHANGELOG.txt \
#         CONST_buildout.cfg buildout.cfg buildout/ \
#         bootstrap.py setup.cfg setup.py \
#         development.ini.in production.ini.in \
#         jsbuild/ print/ apache/ \
#         mapserver/ deploy/
# git remote add origin git@github.com:yjacolin/geomapfish_demo.git
# git submodule add https://github.com/camptocamp/cgxp.git $PROJECT/static/lib/cgxp -b <version>
# git submodule foreach git submodule update --init
# git commit -m "initial commit" && git push origin master



