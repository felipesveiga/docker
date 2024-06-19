# Using existing container as base image
FROM alpine

# Download and install a dependency
RUN apk add --update redis &&\
    mkdir  /home/default-user

# Define the default behavior of the `run` command
CMD ["redis-server"]
