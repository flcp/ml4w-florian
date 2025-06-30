# in /home/florian/.config/waybar
options=$(find -L $themes_path -maxdepth 2 -type d)

# add symlink in wayland themes folder
ln -s ~/.ml4w-florian-custom/waybar-themes/ml4w-flo ml4w-flo

# add in ~/.config/hypr/conf/custom.conf
source = ~/.ml4w-florian-custom/scripts/custom-keybindings.conf 
source = ~/.ml4w-florian-custom/scripts/custom-autostart.conf
