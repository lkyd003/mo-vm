#!/bin/sh
if [ ! -f UUID ]; then
  UUID="f2a98e40-08b7-4444-82dc-00b83ea19a8a"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

