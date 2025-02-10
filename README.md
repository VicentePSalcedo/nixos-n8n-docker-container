# Docker command to build the container
 - docker build -t <container name> <location of docker file>
# Docker compose commands to use
 - docker-compose up -d: Starts the container in detached mode (in the background). The -d is important so it doesn't block your terminal.
 - docker-compose down: Stops and removes the container and the network created by docker-compose.
 - docker-compose ps: Lists the running containers.
 - docker-compose logs: Shows the logs of the container.
 - docker-compose exec sintra-n8n bash (or sh): Allows you to execute a command inside the running container.
