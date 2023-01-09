if [ ! whoami = root ]; then
  echo "You have to run as root (sudo)."
  exit 1
fi
cat repos >> /etc/pacman.conf
cat universe >> /etc/pacman.conf
pacman -Sy
pacman-key --refresh
pacman-key --init
pacman -Sy artix-archlinux-support
pacman-key --populate archlinux
pacman -Syu
# personal selection:
pacman -S git base-devel chromium go lua nvidia nvidia-utils virtualbox code pypy3 nodejs npm ffmpeg git wget micro fish zsh youtube-dl noto-fonts-emoji gucharmap pulseaudio pavucontrol bluez ranger ncdu flameshot
