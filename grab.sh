#!/bin/bash
/usr/sbin/lighttpd -D -f /lighttpd.conf &
url=$URL
ffmpeg -loglevel panic -y -i $url -r 1 -vsync 1 -qscale 1 -f image2 -updatefirst 1 /tmp/www/snapshot.jpg
