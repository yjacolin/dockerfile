FROM ubuntu:14.04
MAINTAINER Yves Jacolin <yjacolin@free.fr>

# Common apps
RUN apt-get update && apt-get install -y vim

# MapServer and dependencies
RUN apt-get install -y make cmake-curses-gui
RUN apt-get install -y g++
RUN apt-get install -y wget git-core ssh-client

RUN apt-get install -y libmapserver1-dev
RUN apt-get install -y libgdal-dev libgd-dev libproj-dev
RUN apt-get install -y qt5-qmake qt5-default libqt5core5a


# Let's hack around setting up ssh key to clone a private github repo.
#RUN mkdir -p /root/.ssh
#ADD id_rsa /root/.ssh/id_rsa
#RUN chmod 700 /root/.ssh/id_rsa
#RUN echo "Host github.com\n\tStrictHostKeyChecking no\n" >> /root/.ssh/config

# QMapfileEditor
RUN git clone git@github.com:yjacolin/QMapfileEditor.git /home/QMapfileEditor
RUN git add remove upstream git@github.com:pmauduit/QMapfileEditor.git
RUN cd /home/QMapfileEditor
RUN qmake 
RUN make

ADD start.sh /start.sh
RUN chmod 0755 /start.sh
CMD /start.sh
