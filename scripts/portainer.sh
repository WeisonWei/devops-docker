#!/bin/bash
DIR=${PWD}
VOL=${PWD}/data
VOL=portainer_data
docker run -d \
--privileged \
--restart always \
--name portainer \
-v ${VOL}:/data \
-v /var/run/docker.sock:/var/run/docker.sock \
-p 9001:9000 \
portainer/portainer:1.23.2