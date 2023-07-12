# Driver installation scripts
### This repo is for personal use. You will not find anything interesting here.

### Steps in order:

1. Run install_usb_drivers.sh
1. Run install_zigbee2mqtt.sh (or run docker compose)
1. Stop Zigbee2MQTT in docker
1. Set required params\* in configuration.yaml
1. Copy configuration.yaml to volume1/docker/zigbee2mqtt/data/
1. Start the Zigbee2MQTT container
1. Navigate to the dashboard

\* Note: Make sure to disable `permit_join` after registering all devices.
