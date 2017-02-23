FROM mhart/alpine-node:base-7
MAINTAINER Ricky Chiang <metavige@gmail.com>

RUN mkdir -p /root/app && \
  apk add --no-cache curl && \
  mkdir -p /opt && \
  curl -sL https://yarnpkg.com/latest.tar.gz | tar xz -C /opt && \
  mv /opt/dist /opt/yarn && \
  ln -s /opt/yarn/bin/yarn /usr/local/bin && \
  apk del --purge curl
WORKDIR /root/app

ONBUILD COPY ./yarn.lock /root/app/
ONBUILD COPY ./package.json /root/app/
ONBUILD RUN yarn --ignore-scripts

CMD ["yarn", "start"]
