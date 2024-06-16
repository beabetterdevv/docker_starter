This is a Docker container for a Python + Flask API and ready to be deployed to AWS using ECS.

## Dockerhub Link
https://hub.docker.com/

## Docker Installation
https://docs.docker.com/engine/install/

## Docker VS Code Extension
In VSCode, go to View > Extensions and type "Docker"

## Project Setup

### Initialize Project
`docker init`

### Build Image
`docker build -t first-time .`
Note: you can add a tag to your image by placing a : and the tag name after your image name. For example, to create a tag called v1 for the above project, you would use `first-time:v1` as the name. 

### Run Container Locally 
`docker run -p 127.0.0.1:8080:8080 first-time`

### Mount a folder from your host machine to your docker container
`docker run -v C:\Users:/container_folder first-time`
C:\Users will now be accessible under /container_folder on your docker container.

### Creating a Volume
`docker volume create shared_volume`

### Mounting a Volume
`docker run -v shared_volume:/my_path first-time`
The shared_volume will now be accessible under /my_path in the container.

### Launching multiple containers from compose.yaml fiole
`docker compose up --build`

## Deploying to AWS

### Login to ECR
`aws ecr get-login-password --region REGIONHERE | docker login --username AWS --password-stdin ACCOUNTIDHERE.dkr.ecr.REGIONHERE.amazonaws.com`

### Tag your version in for ECR
`docker tag test:latest YOURACCOUNT.dkr.ecr.YOURREGION-1.amazonaws.com/YOURREPO:YOURTAG`

### Push your image to ECR\
`docker push YOURACCOUNT.dkr.ecr.YOURREGION.amazonaws.com/YOURREPO:YOURTAG`





