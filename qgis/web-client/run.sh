docker run --name="qgis-web-client" \
-i -t \
-p 5000:80 \
-v ${HOME}/.ssh:/root/.ssh:ro \
-v ${HOME}:/home/${USER} \
-v ${HOME}/Documents/Geomatique/QGIS/Projects/:/home/qgis/ \
-v ${HOME}/Documents/Developpement/qgis/QGIS-Web-Client:/var/www/qgis-web-client/ \
yjacolin/qgis-web-client:latest \
bash

