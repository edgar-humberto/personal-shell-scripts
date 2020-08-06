#!/usr/bin/env bash 

# this is a demo postgres server for when I need one
function _run_postgres {
    if [ ! -d $HOME/docker-volumes/postgres ]; then
        mkdir -p $HOME/docker-volumes/postgres 
    fi
    if [ ! "$(docker ps -a | grep postgres)" ]; then
        docker run -d -p 5432:5432 --name="postgres" --env POSTGRES_PASSWORD=example -v $HOME/docker-volumes/postgres:/var/lib/postgresql/data postgres:11.8
    fi

}

