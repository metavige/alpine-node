FROM mhart/alpine-node:8
MAINTAINER Ricky Chiang <metavige@gmail.com>

WORKDIR /root/app

# RUN mkdir -p /root/app

ONBUILD COPY ./package.json /root/app/
# ONBUILD COPY ./package-lock.json /root/app/
ONBUILD COPY ./yarn.lock /root/app/
ONBUILD RUN yarn install --production

CMD ["npm", "start"]
