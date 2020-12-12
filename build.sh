#!/bin/bash

echo "1/2 Starting the build of the react application..."
npm run build

echo "2/2 Packing the application into a docker image..."
docker build . -t star-wars-server

echo "2/2 Steps completed. Bye"