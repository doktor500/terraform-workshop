#!/bin/bash

# excute build
./gradlew clean build

# load docker environment variables
. /var/lib/jenkins/.docker/credentials

# build and push image to docker hub
docker build . --tag terraform-workshop-app
docker login -u $DOCKER_USER -p $DOCKER_PASSWORD
docker tag terraform-workshop-app $DOCKER_USER/terraform-workshop-app
docker push $DOCKER_USER/terraform-workshop-app

# start ssh agent and add key
eval `ssh-agent -s`
ssh-add /var/lib/jenkins/.ssh/id_rsa

# execute terraform
cd terraform
test -d .terraform || terraform init
terraform state pull
terraform destroy -force
terraform apply -auto-approve
