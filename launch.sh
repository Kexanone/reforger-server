#!/usr/bin/env bash

/steamcmd/steamcmd.sh +force_install_dir /reforger +login anonymous +app_update $(if [ $EXPERIMENTAL -eq 1 ]; then echo 1890870; else echo 1874900; fi) +quit;
cd /reforger
./ArmaReforgerServer "$@"

