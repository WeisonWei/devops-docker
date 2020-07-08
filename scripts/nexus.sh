#!/bin/bash
DIR=${PWD}
VOL=/data/nexus_data/_data/
docker run -d \
--restart always \
--name nexus3-data \
-v ${VOL}:/nexus-data \
-p 9081:8081 \
sonatype/nexus3
