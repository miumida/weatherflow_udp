CONFIG_PATH=/data/options.json

echo Weatherflow UDP!

MQTT_BROKER=$(jq --raw-output ".mqtt_broker" $CONFIG_PATH)

echo "[Info] MQTT_BROKER is [${MQTT_BROKER}]"

nohup python /root/listen.py -d -r -i -m -b $MQTT_BROKER #12.10.79.39

