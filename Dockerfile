FROM mhart/alpine-node:5.3
MAINTAINER Ricky Chiang <metavige@gmail.com>

RUN mkdir -p /root/app
WORKDIR /root/app

ONBUILD COPY ./package.json /root/app/
ONBUILD RUN npm install
ONBUILD COPY . /root/app

CMD ["npm", "start"]
