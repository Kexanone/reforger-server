# reforger-server
[![Docker Pulls](https://img.shields.io/docker/pulls/kexanone/reforger-server.svg?label=Docker%20Pulls&style=flat-square)](https://hub.docker.com/repository/docker/kexanone/reforger-server)
[![Issues](https://img.shields.io/github/issues-raw/Kexanone/reforger-server.svg?label=Issues&style=flat-square)](https://github.com/Kexanone/reforger-server/issues)
[![License](https://img.shields.io/badge/License-GPLv3-orange.svg?style=flat-square)](https://github.com/Kexanone/reforger-server/blob/master/LICENSE)

Simple docker image for an Arma Reforger dedicated server.

## Usage
```sh
CONTAINER_NAME="MyServer"
CONFIG_PATH="<path to JSON config file>"
PROFILE_PATH="<path to profile directory>"

docker create \
    --name "${CONTAINER_NAME}" \
    --network host \
    --restart always \
    -v $(dirname "${CONFIG_PATH}"):/reforger/configs \
    -v ${PROFILE_PATH}:/reforger/profile \
    -e EXPERIMENTAL=0 \
    kexanone/reforger-server \
    -config /reforger/configs/$(basename "${CONFIG_PATH}") \
    -profile /reforger/profile \
    -maxFPS 60
```
**Comments:**
- Check out the [BiKi](https://community.bistudio.com/wiki/Arma_Reforger:Server_Hosting) for details on server hosting.
- All parameters are directly passed to `ArmaReforgerServer`. An overview of available parameters can be found on the [BiKi](https://community.bistudio.com/wiki/Arma_Reforger:Startup_Parameters).
- `PROFILE_PATH` is the folder in which server log and save files will be stored.

## Docker Hub Repository
https://hub.docker.com/r/kexanone/reforger-server
