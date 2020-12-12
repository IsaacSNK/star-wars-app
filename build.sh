#!/bin/bash


echo "1/4 Getting dependencies..."
npm install

echo "2/4 Starting the build of the react application..."
npm run build

echo "2/4 Packing the application into a docker image..."
docker build . -t isaacsnk/star-wars-server:latest

echo "3/4 Publishing to docker hub..."
docker login -u isaacsnk -p $DOCKER_HUB_PASSWORD
docker push isaacsnk/star-wars-server:latest

echo "4/4 Steps completed. Bye"