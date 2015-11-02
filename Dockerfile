FROM alpine:3.2
MAINTAINER Ricky Chiang <metavige@gmail.com>

RUN apk --update add nodejs && \
	rm -rf /var/cache/apk/*

RUN npm install -g npm@2.14.1

RUN mkdir -p /root/app
WORKDIR /root/app

ONBUILD COPY ./package.json /root/app/
ONBUILD RUN npm install
ONBUILD COPY . /root/app

CMD ["npm", "start"]
