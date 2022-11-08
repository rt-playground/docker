FROM node:19-alpine3.15

# Required given the base image we used, alpine does not come with bash. We can
# just use the default sh
# RUN apk add --no-cache bash

# COPY index.ts /data/

# WORKDIR /data

WORKDIR /usr/app
COPY package.json ./

# Does not work when not install globally
RUN npm install -g ts-node typescript nodemon
COPY . ./

CMD ["npm", "run", "dev"]


# Non-global install results in an error if we don't specify the project path.
# RUN npm i  typescript ts-node nodemon
