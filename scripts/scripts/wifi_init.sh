# The following script is used to initalise wifi.
# It's used in i3, where there are no default/easy ways to set it manually.
# This method uses wpa_supplicant, and works.

# If things don't work as intended, add a -d argument to wpa_supplicant.
# If needed, add another d (-dd)
sudo wpa_supplicant -B -c /etc/wpa_supplicant/wpa_supplicant.conf -i wlp1s0
sudo dhclient -v wlp1s0
