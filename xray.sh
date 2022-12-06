#!/bin/sh
if [ ! -f UUID ]; then
  UUID="74f2ce5d-3384-44cd-974f-077f1b9efc95"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

