#!/usr/bin/env bash

docker_ip="`ifconfig en0|grep 'inet '| awk '{print $2}'`"
if [[ -z ${docker_ip} ]]; then 
    docker_ip="`ifconfig wls7|grep 'inet '| awk '{print $2}'`"
fi
if [[ -z ${docker_ip} ]]; then 
    docker_ip="`ifconfig eth0|grep 'inet '| awk '{print $2}'`"
fi
if [[ -z ${docker_ip} ]]; then 
    docker_ip="`ifconfig | grep "172.17.0.1 " | awk '{print $2}'`"
fi
if [[ -z ${docker_ip} ]]; then 
    docker_ip=host.docker.internal
fi
echo "docker ip ${docker_ip}"
export docker_ip
docker-compose -f docker-redis.yml up -d
#docker stack deploy -c docker-redis.yml docker-tool-depe