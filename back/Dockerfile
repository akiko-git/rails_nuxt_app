FROM ruby:2.6.7-alpine3.13

ENV RUNTIME_PACKAGES="linux-headers libxml2-dev make gcc libc-dev nodejs tzdata mysql-dev mysql-client yarn" \
  DEV_PACKAGES="build-base curl-dev" \
  HOME="/myapp" \
  LANG=C.UTF-8 \
  TZ=Asia/Tokyo \
  HOST=0.0.0.0 \
  PORT=3000

#作業ディレクトリに移動
WORKDIR ${HOME}

#ホストのgemファイルをDocker上にコピー
ADD Gemfile ${HOME}/Gemfile
ADD Gemfile.lock ${HOME}/Gemfile.lock

RUN apk update && \
  apk upgrade && \
  apk add --update --no-cache ${RUNTIME_PACKAGES} && \
  apk add --update --virtual build-dependencies --no-cache ${DEV_PACKAGES} && \
  bundle install -j4 && \
  apk del build-dependencies && \
  rm -rf /usr/local/bundle/cache/* \
  /usr/local/share/.cache/* \
  /var/cache/* \
  /tmp/* \
  /usr/lib/mysqld* \
  /usr/bin/mysql*

COPY . ${HOME}

#ポート3000番を開ける
EXPOSE ${PORT}

CMD ["bundle", "exec", "rails", "s", "puma", "-b", ${HOST}, "-p", ${PORT}, "-e", "development"]
