#!/bin/bash

set -e

. /webgetpics-www/setup/share.sh

# grunt-cli
sudo npm install -g grunt-cli@0.1.13

# bootstrap
git clone https://github.com/twbs/bootstrap /webgetpics-www/bootstrap.git
cd /webgetpics-www/bootstrap.git
git checkout v3.3.4
npm install

# jquery
mkdir /webgetpics-www/jquery
cd /webgetpics-www/jquery
npm install jquery@1.11.2
