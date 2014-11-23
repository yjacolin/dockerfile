docker run --name="georezo" \
-i -t \
-p 5000:80 \
-v ${HOME}/.ssh:/root/.ssh:ro \
-v ${HOME}:/home/${USER} \
yjacolin/georezo:drupal
bash
