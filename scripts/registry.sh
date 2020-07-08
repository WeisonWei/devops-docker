#!/bin/bash
DIR=${PWD}
VOL=${PWD}
VOL=registry_data
docker run -d \
--restart always \
--name registry2 \
-v ${VOL}:/var/lib/registry \
-p 5000:5000 \
registry:2