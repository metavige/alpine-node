FROM mhart/alpine-node:8
MAINTAINER Ricky Chiang <metavige@gmail.com>

WORKDIR /root/app

# RUN mkdir -p /root/app

ONBUILD COPY ./package.json /root/app/
ONBUILD RUN npm install

CMD ["npm", "start"]
