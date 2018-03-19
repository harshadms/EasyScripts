################# Mount 1 TB #################

sudo mkdir /mnt/HDD-DATA-1 &&
echo "LABEL=HDD-DATA-1 /mnt/HDD-DATA-1 auto nosuid,nodev,nofail,x-gvfs-show 0 0" >> /etc/fstab &&

################# DOCKER #################

sudo apt-get remove docker docker-engine docker.io &&
sudo apt-get update &&
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common &&
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - &&
sudo apt-key fingerprint 0EBFCD88 &&
sudo add-apt-repository \
"deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable" &&
sudo apt-get update &&
sudo apt install docker-ce

$s = getent group | grep docker
if [ $s == '']
then
        echo "Docker Group is not present. Adding the group"
	sudo groupadd docker &&
fi

sudo usermod -aG  docker $USER &&
docker run hello-world &&

################# general apt-get utils  #################

sudo apt install tmux &&
sudo apt install nmap &&
sudo apt install cmake &&
sudo apt install git &&
sudo apt install aircrack-ng &&
sudo apt install python-pip &&
sudo apt install python-setuptools &&
sudo apt install build-essential &&
sudo apt install unetbootin &&

################# atom  #################

curl -L https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add - &&
sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list' &&
sudo apt-get update &&
sudo apt install atom &&

################# Spotify  #################

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0DF731E45CE24F27EEEB1450EFDC8610341D9410 &&
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list &&
sudo apt-get update &&
sudo apt install spotify-client &&

################# Paper,Numix Themes, Tweek Tool  #################

sudo add-apt-repository ppa:snwh/pulp &&
sudo apt update &&
sudo apt install paper-icon-theme &&
sudo apt-get install paper-cursor-theme &&
sudo apt-get install paper-gtk-theme &&
sudo apt install numix-gtk-theme &&
sudo apt install numix-icon-theme &&
sudo apt-get install unity-tweak-tool &&
sudo add-apt-repository ppa:trentaos-team/rainier &&
sudo apt-get update &&
sudo apt-get install rainier-theme-pack &&

################# GOOGLE CHROME #####################

wget -O google.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb &&
sudo dpkg -i google-chrome-stable_current_amd64.deb
echo "Do you want to remove .deb file? (Y/N) [Y]"
read $rm
if [ $rm == 'Y' ]
then
	rm -f google.deb
elif [ $rm == 'N' ]
then
	echo "Keeping .deb file"
else
	rm -f google.deb
fi

################# TIMESHIFT  #####################

sudo apt-add-repository -y ppa:teejee2008/ppa &&
sudo apt update &&
sudo apt install timeshift &&

################# GNURadio and Stuff  #####################

wget http://www.sbrac.org/files/build-gnuradio && chmod a+x build-gnuradio && ./build-gnuradio &&
sudo add-apt-repository -y ppa:bladerf/bladerf &&
sudo add-apt-repository -y ppa:myriadrf/drivers &&
sudo add-apt-repository -y ppa:myriadrf/gnuradio &&
sudo add-apt-repository -y ppa:gqrx/gqrx-sdr &&
sudo apt-get update &&
sudo apt-get install gqrx-sdr &&
sudo apt-get install libvolk1-bin &&
volk-profile &&

################# Metasploit  #####################

curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall.sh &&
chmod +x msfinstall.sh &&
./msfinstall &&

echo ".\n.\n.\n.\n.\n.\n.ALL DONE ENJOY.\n Now Set the Nvidia Drivers Manually from here => https://help.ubuntu.com/community/BinaryDriverHowto/Nvidia"
