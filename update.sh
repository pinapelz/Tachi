#!/bin/bash
set -e

echo "Pulling latest changes from Git..."
git pull

echo "Stopping running containers from docker-compose-dev.yml..."
docker-compose -f docker-compose-dev.yml down

echo "Rebuilding images and starting containers from docker-compose-dev.yml..."
docker-compose -f docker-compose-dev.yml up --build --force-recreate -d

echo "Deployment complete."
