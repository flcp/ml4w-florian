# in /home/florian/.config/waybar
options=$(find -L $themes_path -maxdepth 2 -type d)

# add symlink in wayland themes folder
ln -s ~/.ml4w-florian-custom/waybar-themes/ml4w-flo ml4w-flo

# add in ~/.config/hypr/conf/custom.conf
source = ~/.ml4w-florian-custom/scripts/custom-keybindings.conf 
source = ~/.ml4w-florian-custom/scripts/custom-autostart.conf

# other
## undervolt
```
sudo undervolt --core -115 --cache -115 --gpu -50

sudo undervolt --read

upower -d

sensors

while true; do upower -d; sleep 1; done



```
### Source
- https://enterprisehomelab.blogspot.com/2019/11/the-definitive-guide-to-undervolting-on.html
- disable undervolting again: https://superuser.com/a/1068665

## Deep sleep

```
sudo dmesg |grep "ACPI: PM: (supports"
[    0.375749] ACPI: PM: (supports S0 S3 S4 S5)
# !has to contain S3!

sudo grubby --args="mem_sleep_default=deep" --update-kernel=ALL
# reboot
cat /sys/power/mem_sleep

# To undo the above
sudo grubby --remove-args="mem_sleep_default=deep" --update-kernel=ALL
```
### Sources
- https://discussion.fedoraproject.org/t/thinkpad-t14-amd-gen5-battery-drain-during-sleep-on-fedora-40/131096
- https://discussion.fedoraproject.org/t/laptop-appears-to-sleep-but-not-suspend/77193/3

## App list
Joplin

VS Code

Spotify

KeepassXC

Onedriver

Microsoft TODO