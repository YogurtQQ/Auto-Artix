sudo pacman -S --noconfirm --needed dialog

# (my cinnamon key shortcuts)
if dialog --stdout --title "What to do?" \
          --backtitle "Backup-Verwaltung" \
          --yesno "Yes: Delete, No:  Restore" 7 60; then
    dconf load /org/cinnamon/desktop/keybindings/ < dconf-settings.conf
else
    echo "No shortcuts were imported."
fi

# checking for sudo/doas (literally every command needs it)
if [ "$(id -u)" -ne 0 ]; then
  echo "You have to run as root (sudo/doas)."
  exit 1
fi

# base install
pacman -Sy
cat universe.conf >> /etc/pacman.conf
pacman -Sy
pacman-key --init
pacman-key --refresh
yes "" | pacman -Sy artix-archlinux-support
cat mirrorlist.conf >> /etc/pacman.conf
pacman-key --populate archlinux
yes "" | pacman -Syu

if dialog --stdout --title "Do you want an extra software list or not?" \
          --backtitle "Backup-Verwaltung" \
          --yesno "Yes, No" 7 60; then
    echo "Going with the full install..."
    words=$(cat package.list)
    tempfile=$(mktemp)
    dialog --checklist "Choose one or more words:" 20 60 10 \
      $(for word in $words; do echo "$word" "$word" ON; done) 2>$tempfile
    choices=$(cat $tempfile)
    for choice in $choices
    do
      if [[ $words =~ (^|[[:space:]])"$choice"($|[[:space:]]) ]]
      then
        echo "You chose '$choice'"
      fi
    done
    rm $tempfile
    pacman -S --noconfirm --needed git base-devel $choices
else
    pacman -S --noconfirm --needed git base-devel
fi



