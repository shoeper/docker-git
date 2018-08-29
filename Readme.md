[![](https://images.microbadger.com/badges/image/shoeper/git.svg)](https://microbadger.com/images/shoeper/git) [![](https://img.shields.io/docker/build/shoeper/git.svg)](https://hub.docker.com/r/shoeper/git)

[![](https://dockeri.co/image/shoeper/git)](https://hub.docker.com/r/shoeper/git)

# Docker git image

Image providing git and wget

# Usage

```bash
docker run -it --rm -v $(pwd):/data shoeper/git clone https://github.com/shoeper/docker-git-debian.git
```

### Gitlab CI

Use as follows to overwrite the entrypoint. A shell will be used instead and it is possible to use git and wget.

```
image: 
  name: shoeper/git:latest
  entrypoint: [""]
```
