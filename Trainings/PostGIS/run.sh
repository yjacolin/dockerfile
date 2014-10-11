docker run --rm --name="trainings_postgis" \
-i -t \
-v ${HOME}:/home/${USER} \
-p 3333:5432 \
yjacolin/trainings_postgis:latest \
bash