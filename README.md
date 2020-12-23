# docker-nanominer

This repo manages the files to build the [dmcanally/nanominer](https://hub.docker.com/repository/docker/dmcanally/nanominer) docker image.

Feel free to use/fork/etc.

## Usage
### Basic Usage
**Be sure to change the config.ini to contain your wallet and email.**

Run nanominer localy
```bash
docker run -d -v ${PWD}/config.ini:/nanominer/config.ini dmcanally/nanominer
```

Build a new version
```bash
./build.sh 3.1.4
```
### Kubernetes
**Be sure to change the update kubernetes/nanominer/configmap.yaml to contain your wallet and email.**

```bash
kubectl apply -k kubernetes/
```