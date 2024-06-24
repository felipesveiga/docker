# Importing alpine image.
FROM node:14-alpine 

# Setting the project's work directory.
WORKDIR usr/app

# Copying the configuration files from our machine to the container.
COPY . . 
 
# Installing the project's dependencies
RUN npm install 

# Finally, specifying the run command.
CMD ["npm",  "start"]
