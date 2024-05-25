#!/bin/bash
if [[ $GIT_BRANCH == "origin/dev" ]]; then
    # Build your project
    sh 'sudo chmod +x build.sh'
    sh 'sudo ./build.sh'
    docker login -u arundockerhub2024 -p $DOCKER_PASSWORD
    docker tag test arundockerhub2024/dev
    docker push arundockerhub2024/dev

elif [[ $GIT_BRANCH == "origin/master" ]]; then
    sh 'sudo chmod +x build.sh'
    sh 'sudo ./build.sh'
    docker login -u arundockerhub2024 -p $DOCKER_PASSWORD
    docker tag arun_capstone arundockerhub2024/prod 
    docker push arundockerhub2024/prod
fi
