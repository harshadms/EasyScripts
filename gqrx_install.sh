echo "This one installs GQRX, GNURadio, Libvolk1-bin"
sudo add-apt-repository -y ppa:bladerf/bladerf &&
sudo add-apt-repository -y ppa:ettusresearch/uhd &&
sudo add-apt-repository -y ppa:myriadrf/drivers  &&
sudo add-apt-repository -y ppa:myriadrf/gnuradio &&
sudo add-apt-repository -y ppa:gqrx/gqrx-sdr &&
sudo apt-get update &&
sudo apt-get install gqrx-sdr &&
sudo apt-get install libvolk1-bin &&
sudo apt-get install gnuradio* &&
volk_profile
