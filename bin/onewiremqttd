#!/bin/sh
##############################

W1_BASE_PATH=/sys/devices/w1_bus_master1
MQTT_TOPIC=filiberry/sensor

while true; do
	for OUTPUT in $(cat $W1_BASE_PATH/w1_master_slaves); do
		VALUE=$(cat $W1_BASE_PATH/$OUTPUT/w1_slave | sed -n 's/^.*\(t=[^ ]*\).*/\1/p' | sed 's/t=//' | awk '{x=$1}END{print(x/1000)}')
		mosquitto_pub -t $MQTT_TOPIC/$OUTPUT -m $VALUE 
	done
	sleep 2
done

