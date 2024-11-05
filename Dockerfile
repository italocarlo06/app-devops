FROM node:23-slim

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json .yarnrc.yml yarn.lock ./
COPY .yarn ./.yarn

RUN yarn install

COPY . .

RUN yarn run build

EXPOSE 3000

CMD [ "yarn", "run", "start" ]



