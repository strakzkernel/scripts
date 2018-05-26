
sudo apt-get update -y
sudo add-apt-repository --yes ppa:webupd8team/java
sudo apt-get -y install oracle-java9-installer
sudo apt -y install oracle-java9-set-default
sudo apt-get -y install libncurses5-dev
sudo apt-get -y install git-core gnupg flex bison gperf
 
sudo apt-get -y install build-essential
sudo apt-get -y install zip
sudo apt-get -y install curl 
sudo apt-get -y install libc6-dev
sudo apt-get -y install git git-svn libncurses5-dev:i386 
sudo apt-get -y install x11proto-core-dev libx11-dev:i386 libreadline6-dev:i386
sudo apt-get -y install libgl1-mesa-glx:i386 libgl1-mesa-dev 
sudo apt-get -y install g++-multilib tofrodos python-markdown
sudo apt-get -y install libxml2-utils xsltproc zlib1g-dev:i386
sudo  ln -s /usr/lib/i386-linux-gnu/mesa/libGL.so.1 /usr/lib/i386-linux-gnu/libGL.so
sudo apt-get -y install -y ccache &&echo 'export PATH="/usr/lib/ccache:$PATH"' | tee -a ~/.bashrc &&source ~/.bashrc && echo $PATH
export USE_CCACHE=1
sudo apt-get -y install aptitude
sudo aptitude -y install build-essential bc binfmt-support libllvm-3.6-ocaml-dev llvm-3.6 llvm-3.6-dev llvm-3.6-runtime cmake automake autogen autoconf autotools-dev libtool shtool python m4 gcc libtool zlib1g-dev
cd ${HOME}
PATH=~/bin:$PATH
curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo
mkdir dragon
cd dragon
yes "" | repo init -u https://github.com/dragon-tc/DragonTC -b master
repo sync -j2 -c -f


# Download te toolchain
git clone --depth=50 --branch=opt-linaro-7.x https://github.com/krasCGQ/aarch64-linux-android $HOME/LINARO/7.x
# Download the Kernel Sources
git clone --depth=50 --branch=treble https://github.com/strakzkernel/Mido $HOME/SK
  
# Download the clang Source
git clone https://android.googlesource.com/platform/prebuilts/clang/host/linux-x86 clang
# Download AnyKernel2

export ARCH=arm64
cd build
./7.0 opt
cd ${HOME}/dragon
git add .
git commit -m "dragon TC"
git remote add origin https://github.com/strakzkernel/dtc.git
git push -u origin master
