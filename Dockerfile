FROM debian:stable-slim

LABEL maintainer="Sven Höper <sven@hoeper.me>"

RUN export DEBIAN_FRONTEND=noninteractive \
  &&  apt-get update \
  &&  apt-get install -y --no-install-recommends git wget ca-certificates \
  &&  rm -rvf /var/lib/apt/lists/* \
  &&  rm -rvf /usr/share/man/?? \
  &&  rm -rvf /usr/share/man/??_* \
  &&  rm -rvf /usr/share/doc/ \
  &&  git config --global user.email "git@docker.example.com" \
  &&  git config --global user.name "git@docker"

VOLUME /data
WORKDIR /data

CMD ["git", "help"]
