FROM jetbrains/teamcity-agent:latest

RUN curl -L https://github.com/docker/compose/releases/download/1.13.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose \
    && chmod +x /usr/local/bin/docker-compose
#http://github.com/docker/compose/releases/download/1.13.0/docker-compose-Linux-x86_64
#https://download.docker.com/linux/ubuntu/dists/xenial/pool/edge/amd64/docker-ce_17.05.0~ce-0~ubuntu-xenial_amd64.deb

