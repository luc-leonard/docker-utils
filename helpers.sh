docker_exec() {
    docker exec -it $(docker ps | grep $1 | head -n 1 | awk '{print $1}') $2
}