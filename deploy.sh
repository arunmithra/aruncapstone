#!/bin/bash
if [[ $GIT_BRANCH == "origin/dev" ]]; then
    # Build your project
    sh 'chmod +x build.sh'
    sh './build.sh'
    docker login -u arundockerhub2024 -p $DOCKER_PASSWORD
    docker tag test arundockerhub2024/dev
    docker push arundockerhub2024/dev

elif [[ $GIT_BRANCH == "origin/main" ]]; then
    sh 'chmod +x build.sh'
    sh './build.sh'
    docker login -u arundockerhub2024 -p $DOCKER_PASSWORD
    docker tag test arundockerhub2024/prod 
    docker push arundockerhub2024/prod
fi
