FROM bellsoft/liberica-openjdk-alpine:21.0.8

# Install curl and jq
RUN apk add curl jq

# Workspace
WORKDIR /home/selenium-docker

# Add the required files
ADD target/docker-resources ./
ADD runner.sh               runner.sh

# Start the runner.sh
ENTRYPOINT sh runner.sh