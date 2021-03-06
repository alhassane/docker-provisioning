#!/usr/bin/env bash

DOCKER_COMPOSE_VERSION=1.16.1

# uninstall docker-compose
rm /usr/local/bin/docker-compose

# Install docker compose
curl -L "https://github.com/docker/compose/releases/download/${DOCKER_COMPOSE_VERSION}/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

chmod +x /usr/local/bin/docker-compose

docker-compose --version
