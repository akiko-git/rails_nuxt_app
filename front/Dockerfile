FROM node:14.16.1-alpine3.13

ENV HOME="/myapp" \
  LANG=C.UTF-8 \
  TZ=Asia/Tokyo \
  HOST=0.0.0.0 \
  PORT=8002

WORKDIR ${HOME}
ADD . ${HOME}

RUN apk update \
  && apk upgrade \
  && npm install -g n\
  && yarn install \
  && npm install -g vue-cli \
  && rm -rf /var/cache/apk/*

EXPOSE ${PORT}

CMD ["yarn", "dev"]
