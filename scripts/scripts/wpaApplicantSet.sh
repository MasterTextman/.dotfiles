#!/bin/sh

SSID="$1"
PASS="$2"

wpa_passphrase $SSID $PASS >> cat /etc/wpa_supplicant.conf
sudo wpa_supplicant -B -i wlp3s0 -D nl80211 -c /etc/wpa_supplicant.conf
echo ''
sudo iwconfig wlp3s0
echo ''
sudo dhclient wlp3s0

