#!/usr/bin/env bash

/steamcmd/steamcmd.sh +force_install_dir /reforger +login anonymous +app_update 1874900 +quit;
cd /reforger
./ArmaReforgerServer "$@"

