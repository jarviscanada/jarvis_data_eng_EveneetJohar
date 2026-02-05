#!/bin/sh

# ===============================
# Script to manage a PostgreSQL Docker container
# Commands: create, start, stop, restart
# ===============================

# Capture CLI arguments
cmd=$1
db_username=$2
db_password=$3

# Function to check if Docker is running
check_docker() {
  sudo systemctl is-active --quiet docker || {
    echo "Docker is not running. Starting Docker..."
    sudo systemctl start docker
    if [ $? -ne 0 ]; then
      echo "Failed to start Docker. Exiting."
      exit 1
    fi
  }
}

# Function to check if container exists
container_exists() {
  docker container inspect jrvs-psql > /dev/null 2>&1
  return $?
}

# Ensure Docker is running
check_docker

# Get container status
container_exists
container_status=$?

# ===============================
# Handle commands
# ===============================
case $cmd in
  create)
    if [ $container_status -eq 0 ]; then
      echo "Container 'jrvs-psql' already exists."
      exit 1
    fi

    if [ $# -ne 3 ]; then
      echo "Usage: $0 create <username> <password>"
      exit 1
    fi

    echo "Creating Docker volume 'pgdata'..."
    docker volume create pgdata

    echo "Creating and starting PostgreSQL container..."
    docker run -d \
      --name jrvs-psql \
      -e POSTGRES_USER=$db_username \
      -e POSTGRES_PASSWORD=$db_password \
      -v pgdata:/var/lib/postgresql/data \
      -p 5432:5432 \
      postgres:latest

    exit $?
    ;;

  start|stop)
    if [ $container_status -ne 0 ]; then
      echo "Container 'jrvs-psql' does not exist."
      exit 1
    fi

    echo "${cmd^}ing container 'jrvs-psql'..."
    docker container $cmd jrvs-psql
    exit $?
    ;;

  restart)
    if [ $container_status -ne 0 ]; then
      echo "Container 'jrvs-psql' does not exist."
      exit 1
    fi

    echo "Restarting container 'jrvs-psql'..."
    docker container restart jrvs-psql
    exit $?
    ;;

  *)
    echo "Illegal command."
    echo "Usage: $0 create|start|stop|restart"
    exit 1
    ;;
esac

