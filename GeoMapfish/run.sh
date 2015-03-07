docker run --name="geomapfish" \
-i -t \
-v ${HOME}/.ssh:/root/.ssh:ro \
-v ${HOME}:/home/${USER} \
yjacolin/geomapfish:latest bash
