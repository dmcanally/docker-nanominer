# docker-nanominer

This repo manages the files to build the [dmcanally/nanominer](https://hub.docker.com/repository/docker/dmcanally/nanominer) docker image.

Feel free to use/fork/etc.

## Usage
### Basic Usage

**Be sure to setup config.ini to contain your wallet and email.**
https://github.com/nanopool/nanominer#configuration-file

The `config.ini` in this repo provides an example for mining [PASC](https://www.pascalcoin.org/how_to_mine), but can be setup to mine whatever is supported by nanominer.


Example `config.ini`
```
[RandomHash2]
wallet=<YourWallet>
paymentId = 0
coin=Pascal
sortPools=true
email=<Your Email>
pool1=fastpool.xyz:3336
```

Run nanominer localy
```bash
docker run -d -v ${PWD}/config.ini:/nanominer/config.ini dmcanally/nanominer
```

Build a new version
```bash
./build.sh 3.1.4
```

For information on using yoru GPU, more info [here](https://docs.docker.com/config/containers/resource_constraints/#gpu)

### Kubernetes

**Be sure to change the update kubernetes/nanominer/configmap.yaml to contain your wallet and email.**

```bash
kubectl apply -k kubernetes/
```