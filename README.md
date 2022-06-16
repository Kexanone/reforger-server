# reforger-server
Simple docker image for an Arma Reforger dedicated server.

## Usage
```sh
CONTAINER_NAME="MyServer"
CONFIG_PATH="<path to JSON config file>"
PROFILE_PATH="<path to profile directory>"

docker create \
    --name "${CONTAINER_NAME}" \
    --network host \
    -v $(dirname "${CONFIG_PATH}"):/reforger/configs \
    -v ${PROFILE_PATH}:/reforger/profile \
    kexanone/reforger-server \
    -config /reforger/configs/$(basename "${CONFIG_PATH}") \
    -profile /reforger/profile \
    -maxFPS 60
```
**Comments:**
- Check out the [BiKi](https://community.bistudio.com/wiki/Arma_Reforger:Server_Hosting) for details on server hosting.
- All parameters are directly passed to `ArmaReforgerServer`. An overview of available parameters can be found on the [BiKi](https://community.bistudio.com/wiki/Arma_Reforger:Startup_Parameters).
- `PROFILE_PATH` is the folder in which server log and save files will be stored.
