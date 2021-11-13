#!/bin/bash

# written by hosein yousefi
# change the docker daemon.json file to add live-restore directive


mkdir -p /etc/docker

if [[ -e /etc/docker/daemon.json  ]]
then
        if [[ $(grep -ari '"live-restore": false' /etc/docker/daemon.json) ]]
        then
                changed=$(sed -n '/live-restore/p' /etc/docker/daemon.json |sed 's/false/true/')
                sed -i "/live-restore*/ c   $changed" /etc/docker/daemon.json

        elif [[ ! $(grep -ari "live-restore:*" /etc/docker/daemon.json) ]]
        then
                sed -i '/{/ a   "live-restore": true,' /etc/docker/daemon.json
        fi
else
        echo -e "{\n  \"live-restore\": true\n}" >> /etc/docker/daemon.json
fi

