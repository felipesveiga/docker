# Importing alpine image.
FROM node:14-alpine 

# Copying the configuration files from our machine to the container.
COPY . . 
 
# Installing the project's dependencies
RUN npm install 

# Finally, specifying the run command.
CMD ["npm",  "start"]
