xhost +
# Config so QMapfileEditor finds your Qt
# Gtkrc so Qt finds your Gtk settings
# Users home is mounted as home
# --rm will remove the container as soon as it ends
# -v ${HOME}/.config:/.config \
# -v ${HOME}/.gtkrc-2.0:/.gtkrc-2.0 \
docker run --rm --name="qmapfileeditor-tmp" \
-i -t \
-v ${HOME}/.gtkrc-2.0:/.gtkrc-2.0 \
-v ${HOME}:/home/${USER} \
-v /tmp/.X11-unix:/tmp/.X11-unix \
-e DISPLAY=unix$DISPLAY \
yjacolin/qmapfileeditor:latest \
bash
# /home/yves/Documents/Developpement/Yjacolin/QMapfileEditor/QMapfileEditor
xhost -
