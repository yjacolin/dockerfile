docker run --name="georezo" \
-i -t \
-p 5000:80 \
-v ${HOME}/.ssh:/root/.ssh:ro \
-v ${HOME}:/home/${USER} \
-v ${HOME}/Documents/Developpement/Yjacolin/georezov3:/home/georezo/ \
yjacolin/georezo:drupal
bash
