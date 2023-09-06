Ok, let's go, first of all, install Arch Linux, you can use my guide, [archinstall](https://github.com/pzeadrian/archinstall)
After you successfully installed Arch:

1. Install some basic packages.
```bash
sudo pacman -S fish dunst libnotify hyprland hyprpaper xdg-desktop-portal-hyprland 
wayland xorg-xwayland wl-clipboard pipewire pipewire-alsa pipewire-pulse 
pipewire-jack wireplumber waybar alacritty git pcmanfm file-roller neovim 
bluez bluez-utils blueman network-manager-applet btop neofetch mpv imv 
grim slurp ranger exa bat pavucontrol nodejs yarn inxi alsa-tools alsa-utils 
kvantum gtk-engines gtk-engine-murrine brightnessctl polkit-gnome xorg-xhost
firefox udisks2
```

2. Change the shell to /bin/fish.
```bash
chsh
```

3. Install an AUR helper, [paru](https://github.com/Morganamilo/paru), for example.
```bash
mkdir Documents
cd Documents
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
```

4. Install some AUR packages
```bash
paru -S rofi-lbonn-wayland-git
```

5. Enable some basic services.
```bash
systemctl enable --user wireplumber
systemctl enable --user pipewire
sudo systemctl enable bluetooth
```

6. Run some basic commands.
    6.1. rofi-dmenu (dmenu replacement for dunst)
    ```bash
    sudo ln -s /usr/bin/rofi /usr/bin/dmenu
    ```

7. Reboot.
8. Clone my repo [.files](https://github.com/pzeadrian/.files) and run some basic scripts.
```bash
cd Documents
git clone https://github.com/pzeadrian/.files
cd .files/scripts
./fonts.sh
./config.sh
```

9. Add some variables to /etc/environment.
```bash
QT_STYLE_OVERRIDE=kvantum
MOZ_ENABLE_WAYLAND=1
```


