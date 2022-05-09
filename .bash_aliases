alias mountBulk="sudo mount /dev/sda1 ~/bulk"

alias dbport="ddev describe | awk '{print $2 $5}' | grep "db" -A 1 | sed 's/│//'"
alias dds="ddev start && dbport"
alias ddsh="ddev ssh"
alias ddcc='ddev exec "./typo3cms cache:flush"'
alias dddu='ddev exec "./typo3cms database:updateschema"'

alias kderestart='kquitapp5 plasmashell && kstart plasmashell'
alias ddas='ddev auth ssh && dds'

alias vpnr='sudo route del -net 0.0.0.0 gw 0.0.0.0 dev tap0'
alias p='phpstorm .'

alias listentomic="arecord -f cd - | aplay -"
alias pwg='pwgen 48 -cyn'

#Webcam
# https://askubuntu.com/questions/747212/how-to-disable-integrated-webcam-on-ubuntu [2022-03-29]
alias disablecam="echo '3-6' | sudo tee /sys/bus/usb/drivers/usb/unbind"
alias enablecam="echo '3-6' | sudo tee /sys/bus/usb/drivers/usb/bind"

# Get Sources: pactl list sources
alias setMic='pactl set-default-source alsa_input.<PCI-DEVICE>'
