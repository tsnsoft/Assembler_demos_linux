sudo apt-get install       \
    cmake                  \
    build-essential        \
    libboost-dev           \
    libqt5xmlpatterns5-dev \
    qtbase5-dev            \
    qt5-default            \
    libqt5svg5-dev         \
    libgraphviz-dev        \
    libcapstone-dev        \
    pkg-config

git clone --recursive https://github.com/eteran/edb-debugger.git
cd edb-debugger
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=/usr/local/ ..
sudo make install
sudo ldconfig
