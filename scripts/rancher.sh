#!/bin/bash
DIR=${PWD}
VOL=rancher_data
docker run -d \
--restart=unless-stopped \
--name rancher \
-v ${VOL}:/var/lib/rancher/ \
-p 7080:80 \
-p 7443:443 \
rancher/rancher:stable