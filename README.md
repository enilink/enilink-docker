# enilink-docker

Basic Docker container with Java and the enilink platform.

## Build the image

`docker build -t enilink-docker https://github.com/enilink/enilink-docker.git`

## Start the container

`docker run -it -p 10080:10080 --rm enilink-docker`
