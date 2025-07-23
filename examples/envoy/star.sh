#!/bin/bash

set -e

docker-compose -f "$(dirname "${BASH_SOURCE[0]}")/docker-compose.yml" up -d --build
sleep 5
echo "Starting APP server..."
./1-start-services.sh
sleep 1
echo "Starting SPIRE agents..."
./2-start-spire-agents.sh
sleep 1
echo "Creating registration entries..."
./3-create-registration-entries.sh

echo "Press Enter to stop the services and exit."
read
echo "Stopping services..."
docker-compose -f "$(dirname "${BASH_SOURCE[0]}")/docker-compose.yml" down --remove-orphans --volumes --rmi all