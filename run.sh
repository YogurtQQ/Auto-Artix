cat universe >> /etc/pacman.conf
pacman -Sy
pacman-key --refresh
pacman-key --init
pacman -Sy artix-linux-support
cat repos >> /etc/pacman.conf
pacman-key --populate archlinux
pacman -Syu

pacman -S git base-devel chromium go lua nvidia nvidia-utils virtualbox code pypy3 nodejs npm ffmpeg git wget micro fish zsh youtube-dl noto-fonts-emoji gucharmap pulseaudio pavucontrol bluez ranger ncdu flameshot
