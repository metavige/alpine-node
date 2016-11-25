FROM mhart/alpine-node:6
MAINTAINER Ricky Chiang <metavige@gmail.com>

RUN mkdir -p /root/app && \
  npm install -g yarn --no-progress
WORKDIR /root/app

ONBUILD COPY ./yarn.lock /root/app/
ONBUILD COPY ./package.json /root/app/
ONBUILD RUN yarn --ignore-scripts

CMD ["npm", "start"]
