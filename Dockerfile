FROM debian:stable-slim

LABEL maintainer="Sven Höper <sven@hoeper.me>" \
  name="shoeper/git-debian" \
  vcs-url="https://github.com/shoeper/docker-git-debian" \
  vcs-ref="master"

RUN export DEBIAN_FRONTEND=noninteractive \
  &&  apt-get update \
  &&  apt-get install -y --no-install-recommends git wget ca-certificates \
  &&  rm -rf /var/lib/apt/lists/* \
  &&  rm -rf /usr/share/man/?? \
  &&  rm -rf /usr/share/man/??_* \
  &&  rm -rf /usr/share/doc/ \
  &&  git config --global user.email "git@docker.example.com" \
  &&  git config --global user.name "git@docker"

VOLUME /data
WORKDIR /data

CMD ["git", "help"]
