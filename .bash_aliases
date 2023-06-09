alias mountBulk="sudo mount /dev/sda1 ~/bulk"

#############
#  d d e v  #
#############
alias dbport="ddev describe | awk '{print $2 $5}' | grep "db" -A 1 | sed 's/│//'"
alias dds="ddev start && dbport"
alias ddsh="ddev ssh"
alias ddcc='ddev exec "./typo3cms cache:flush"'
alias dddu='ddev exec "./typo3cms database:updateschema"'
alias ddas='ddev auth ssh && dds'

alias kderestart='kquitapp5 plasmashell && kstart plasmashell'


alias vpnr='sudo route del -net 0.0.0.0 gw 0.0.0.0 dev tap0'
alias p='phpstorm .'

alias listentomic="arecord -f cd - | aplay -"
alias pwg='pwgen 48 -cyn'
alias timestamp="date +%s"
# CAUTION: Use only if the RAM has enough space!!!!
alias swapclear="sudo swapoff -a && sudo swapon -a"

#Webcam
# https://askubuntu.com/questions/747212/how-to-disable-integrated-webcam-on-ubuntu [2022-03-29]
alias disablecam="echo '3-6' | sudo tee /sys/bus/usb/drivers/usb/unbind"
alias enablecam="echo '3-6' | sudo tee /sys/bus/usb/drivers/usb/bind"

# Get Sources: pactl list sources
MIC="" # Device Name here
alias setMic="pactl set-default-source mono"
alias setMono="pactl load-module module-remap-source source_name=mono master=$MIC channels=2 channel_map=mono,mono"

# Git Magic
# Check which is the default branch of a repository
alias checkmain="git symbolic-ref refs/remotes/origin/HEAD | sed 's@^refs/remotes/origin/@@'"
alias gitmain="git symbolic-ref refs/remotes/origin/HEAD | sed 's@^refs/remotes/origin/@@'"
# TODO: Rework - Should remove all local but already merged branches
#alias gitRemoveMerged="GITMAIN=`gitmain` | git branch --no-contains $GITMAIN --merged $GITMAIN"
alias gch="git checkout"



