# docker-nanominer

This repo manages the files to build the [dmcanally/nanominer](https://hub.docker.com/repository/docker/dmcanally/nanomine) docker image.

https://hub.docker.com/repository/docker/dmcanally/nanomine

Feel free to use/fork/etc.

## Usage
### Basic Usage
**Be sure to change the config.ini to contain your wallet and email.**
```bash
docker run -d -v ${PWD}/config.ini:/nanominer/config.ini dmcanally/nanominer
```

### Kubernetes
Future addition

