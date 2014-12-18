#!/bin/bash

#ADDRESS=$(cat /etc/hosts | grep $(hostname) | cut -f1)
ADDRESS=0.0.0.0


# Give server time to boot, then setup proxy on port 9091
(sleep 3 && curl -sSX POST -d "port=9091&bindAddress=${ADDRESS}" http://${ADDRESS}:9090/proxy) &

# -address isn't working here
exec /browsermob-proxy-2.0-beta-9/bin/browsermob-proxy -port 9090
