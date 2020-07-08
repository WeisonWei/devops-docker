#!/bin/bash
DIR=${PWD}
VOL=${PWD}
docker run -d \
--restart always \
--name ngixn \
-e TZ="Asia/Shanghai" \
-v ${VOL}/nginx:/etc/nginx \
-v ${VOL}/html:/var/www/html \
-v ${VOL}/pages:/data/pages \
-p 80:80 \
-p 443:443 \
nginx:1.16.1
