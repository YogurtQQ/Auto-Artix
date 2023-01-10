# (my cinnamon key shortcuts)
echo -n "Do you want to import Cinnamon DE shortcuts? (yes/no) "
read answer
case $answer in
  [Yy]|[Yy][Ee][Ss])
    echo "Importing..."
    dconf load /org/cinnamon/desktop/keybindings/ < dconf-settings.conf
    ;;
  [Nn]|[Nn][Oo])
    echo "No shortcuts were imported."
    ;;
  *)
    echo "Invalid input. Please enter 'yes' or 'no'."
    ;;
esac

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
yes | pacman -Sy artix-archlinux-support
cat mirrorlist.conf >> /etc/pacman.conf
pacman-key --populate archlinux
yes | pacman -Syu

echo -n "Do you want an extra software list or not? (yes/no) "
read answer
case $answer in
  [Yy]|[Yy][Ee][Ss])
    echo "Going with the full install..."
    sudo pacman -S --noconfirm --needed dialog
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
    ;;
  [Nn]|[Nn][Oo])
    pacman -S --noconfirm --needed git base-devel
    ;;
  *)
    echo "Invalid input. Please enter 'yes' or 'no'."
    ;;
esac


