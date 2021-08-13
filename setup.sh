read -p "Full setup (No for Lite setup)? [Yes] " setupType
setupType=${setupType:-Yes}

echo "##### REMOVING SOFTWARE #####"
pacman -R --noconfirm yakuake thunderbird qbittorrent

echo "##### ENABLING AUR #####"
pacman -S --needed --noconfirm base-devel

echo "##### INSTALLING LITE SOFTWARE #####"
pacman -S --noconfirm net-tools konsole gedit gparted


if [ "$setupType" = "Yes"]; then
  echo "##### UPDATING MIRRORS #####"
  pacman-mirrors --fasttrack

  echo "##### INSTALLING HEAVY SOFTWARE #####"
  pacman -S --noconfirm okular discord transmission-qt cura steam
fi


echo "##### UPDATING SYSTEM #####"
pacman -Syu --noconfirm
