# dotfiles
My personal dotfiles of my i3 test system

# Arch Install
use
```bash
archinstall
```
with desktop -> i3 -> i3-gaps and the following packages: 
```
vim kitty firefox feh git dmenu xorg-xrandr
```
#### set keyboard layout
Console: 
```bash
setxkbmap -layout de
```
config: 
```bash
exec --no-startup-id setxkbmap -layout de
```
#### set resolution
xrandr -s <RESOLUTION>


