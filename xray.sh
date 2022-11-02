#!/bin/sh
if [ ! -f UUID ]; then
  UUID="CF7F17FB-CAEE-1F28-1F8F-942002A8DA53"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

