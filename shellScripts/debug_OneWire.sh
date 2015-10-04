#!/bin/sh
##############################
#
# DEBUG TOOL for Filiberry2 MQTT Connector

MQTT_TOPIC=filiberry/sensor

while true; do
	mosquitto_pub -t $MQTT_TOPIC/22-000000336328 -m 84.77 
	sleep 1
	mosquitto_pub -t $MQTT_TOPIC/22-000000336327 -m 30.33 
	sleep 1
done

