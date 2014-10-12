docker run --name="qmapfileeditor" \
-i -t \
-v ${HOME}/.ssh:/root/.ssh:ro \
-v ${HOME}/.gtkrc-2.0:/.gtkrc-2.0 \
-v ${HOME}:/home/${USER} \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-e DISPLAY=unix$DISPLAY \
yjacolin/qmapfileeditor:v0.1 
bash
