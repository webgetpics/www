#!/bin/bash

set -e

TMPDIR=/var/tmp/webgetpics-www

# main static content
cp /webgetpics-www/www/* $TMPDIR

# bootstrap
cd /webgetpics-www/bootstrap.git
git checkout .
git apply /webgetpics-www/setup/bootstrap/bootstrap.patch
grunt dist
cp -r /webgetpics-www/bootstrap.git/dist/* $TMPDIR

# jquery
cp -r /webgetpics-www/jquery/node_modules/jquery/dist/cdn/* $TMPDIR

# pics
convert $TMPDIR/rpi.jpg -strip -resize 800x600 $TMPDIR/rpi-sm.jpg
convert $TMPDIR/screen.jpg -strip -resize 800x600 $TMPDIR/screen-sm.jpg
