#!/bin/bash

# Liste der Pakete zum Installieren
packages=(
alacritty
appeditor-git
base
base-devel
bash-completion
bat
bibata-cursor-theme
blueman
bluez-utils
brightnessctl
calibre
chromium
cliphist
duf
dunst
efibootmgr
eza
fd
figlet
firefox
fish
flatpak
foliate
freerdp
fuse2
fzf
geany-plugins
gnome-disk-utility
gnome-terminal
gnome-themes-extra
grim
grub-btrfs
gst-libav
gst-plugin-pipewire
gst-plugins-bad
gst-plugins-good
gst-plugins-ugly
gum
gvfs-nfs
gvfs-smb
htop
hyprland
intel-ucode
kitty
kvantum-theme-orchis-git
libva-mesa-driver
linux
linux-firmware
linux-headers
linux-lts
linux-lts-headers
lolcat
lsd
man-pages
mc
meld
microsoft-edge-stable-bin
mousepad
ms-teams-for-linux-bin
nano-syntax-highlighting
neofetch
neovim
network-manager-applet
nitrogen
nwg-look-bin
orchis-theme
otf-font-awesome
p7zip
pacman-contrib
pacseek
papirus-icon-theme
pavucontrol
pfetch
picom
pipewire-alsa
pipewire-pulse
polkit-gnome
python-click
python-dbus-next
python-iwlib
python-orjson
python-pip
python-pywal
python-rich
qimgv
qt5ct
qt6ct
qtile-extras
ranger
ripgrep
rofi
sabnzbd
scrot
sddm-sugar-candy-git
slock
slurp
spotify
starship
sublime-text-4
swappy
swayidle
swaylock-effects-git
swww
terminus-font
thunar
timeshift
tldr
toilet
trizen
ttf-fira-code
ttf-firacode-nerd
ttf-fira-mono
ttf-fira-sans
ttf-font-awesome
ttf-iosevka-nerd
ttf-jetbrains-mono
ttf-jetbrains-mono-nerd
tumbler
viewnior
virtualbox
virtualbox-guest-iso
visual-studio-code-bin
vivaldi
vivaldi-ffmpeg-codecs
vlc
waybar
wget
wlogout
xautolock
xclip
xdg-desktop-portal-gtk
xdg-desktop-portal-hyprland
xdg-user-dirs
xf86-video-vesa
xfce4-terminal
xorg-bdftopcf
xorg-docs
xorg-fonts-100dpi
xorg-fonts-75dpi
xorg-font-util
xorg-iceauth
xorg-mkfontscale
xorg-server-devel
xorg-server-xephyr
xorg-server-xnest
xorg-server-xvfb
xorg-sessreg
xorg-smproxy
xorg-x11perf
xorg-xbacklight
xorg-xcmsdb
xorg-xcursorgen
xorg-xdpyinfo
xorg-xdriinfo
xorg-xev
xorg-xgamma
xorg-xhost
xorg-xinit
xorg-xkbevd
xorg-xkbutils
xorg-xkill
xorg-xlsatoms
xorg-xlsclients
xorg-xpr
xorg-xrefresh
xorg-xsetroot
xorg-xvinfo
xorg-xwd
xorg-xwininfo
xorg-xwud
yay-git
yt-dlp
zip
zram-generator
zsh
)


# Überprüfen und Installieren der Pakete
for package in "${packages[@]}"; do
    if yay -Qs "^$package$" > /dev/null; then
        echo "$package ist bereits installiert. Überspringen."
    else
        echo "Installiere $package..."
        yay -S --noconfirm "$package"
    fi
done