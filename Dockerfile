FROM webgetpics/archlinux:2014-07-25
ADD webgetpics-www /webgetpics-www
WORKDIR /webgetpics-www
RUN ["bash", "-l", "/webgetpics-www/setup/setup.sh"]
