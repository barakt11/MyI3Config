dbus-update-activation-environment --systemd DISPLAY
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK
sudo sh -c "chown barakt:users /sys/class/backlight/intel_backlight/brightness"
