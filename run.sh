#!/bin/bash

set +e
echo "Restarting."
docker stop webgetpics-www
docker rm webgetpics-www
set -e

mkdir -p /var/tmp/webgetpics-www
chown 1000:1000 /var/tmp/webgetpics-www

docker run --rm -t \
    -v /etc/localtime:/etc/localtime:ro \
    -v /etc/webgetpics-www:/etc/webgetpics-www:ro \
    -v /var/tmp/webgetpics-www:/var/tmp/webgetpics-www \
    --name webgetpics-www -h webgetpics-www \
    webgetpics/webgetpics-www:0 \
    sudo -iu user /webgetpics-www/run/run.sh
