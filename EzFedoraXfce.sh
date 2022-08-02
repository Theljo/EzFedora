#update + gui
echo"updating + gui"
dnf -y update
sudo dnf -y install @xfce-desktop-environment
#adding apps
echo"adding apps"
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
dnf install dnf-plugins-core
sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/x86_64/
rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
dnf install -y brave-browser
sudo flatpak install flathub com.spotify.Client
flatpak -y install flathub com.discordapp.Discord
flatpak -y install flathub com.visualstudio.code
flatpak -y install flathub com.obsproject.Studio
flatpak -y install flathub org.gimp.GIMP
flatpak -y install flathub com.usebottles.bottles


#finish up
echo"reboot"
reboot
