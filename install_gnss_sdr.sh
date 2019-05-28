sudo apt-get install build-essential cmake git libboost-dev \
   libboost-date-time-dev libboost-system-dev libboost-filesystem-dev \
   libboost-thread-dev libboost-chrono-dev libboost-serialization-dev \
   libboost-program-options-dev libboost-test-dev liblog4cpp5-dev \
   libuhd-dev gnuradio-dev gr-osmosdr libblas-dev liblapack-dev \
   libarmadillo-dev libgflags-dev libgoogle-glog-dev libhdf5-dev \
   libgnutls-openssl-dev libmatio-dev python-mako python-six \
   libpugixml-dev libpcap-dev libprotobuf-dev protobuf-compiler \
   libgtest-dev
   
sudo apt-get install git python-pip
sudo pip install git+https://github.com/gnuradio/pybombs.git
pybombs auto-config
pybombs recipes add-defaults
pybombs prefix init ~/pybombs_prefix -a myprefix -R gnuradio-default
. ~/pybombs_prefix/setup_env.sh
pybombs install gnss-sdr
pybombs install armadillo gflags glog gnutls protobuf
volk_profile
echo "Done :)"
