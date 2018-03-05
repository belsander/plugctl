#!/bin/ash

# Collect smartplug IP
PLUG_IP=$(sed -n -e 's/^ip\s*=\s*\(.*\)/\1/p' /go/conf/plugctl.conf)

# Disable cloud upload statistics
/go/bin/plugctl -disable="cloud" -ip="$PLUG_IP"

# Start deamon
/go/bin/plugctl -conf="/go/conf/plugctl.conf"
