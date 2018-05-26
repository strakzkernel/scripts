sudo aptget update y
sudo addaptrepository yes ppa:webupd8team/java
sudo aptget install oraclejava9installer
sudo apt install oraclejava9setdefault
sudo aptget install libncurses5dev
sudo aptget install gitcore gnupg flex bison gperf
 
sudo aptget install buildessential
sudo aptget install zip
sudo aptget install curl 
sudo aptget install libc6dev
sudo aptget install git gitsvn libncurses5dev:i386 
sudo aptget install x11protocoredev libx11dev:i386 libreadline6dev:i386
sudo aptget install libgl1mesaglx:i386 libgl1mesadev 
sudo aptget install g++multilib tofrodos pythonmarkdown
sudo aptget install libxml2utils xsltproc zlib1gdev:i386
sudo  ln s /usr/lib/i386linuxgnu/mesa/libGL.so.1 /usr/lib/i386linuxgnu/libGL.so
sudo aptget install y ccache &&echo 'export PATH="/usr/lib/ccache:$PATH"' | tee a ~/.bashrc &&source ~/.bashrc && echo $PATH
export USE_CCACHE=1
sudo aptget install aptitude
sudo aptitude y install buildessential bc binfmtsupport libllvm3.6ocamldev llvm3.6 llvm3.6dev llvm3.6runtime cmake automake autogen autoconf autotoolsdev libtool shtool python m4 gcc libtool zlib1gdev
cd ${HOME}
PATH=~/bin:$PATH
curl https://storage.googleapis.com/gitrepodownloads/repo > ~/bin/repo
chmod a+x ~/bin/repo
mkdir dragon
cd dragon
yes "" | repo init u https://github.com/dragontc/DragonTC b master
repo sync j2 c f

 



git clone depth=50 branch=optlinaro7.x https://github.com/krasCGQ/aarch64linuxandroid $HOME/LINARO/

git clone depth=50 branch=treble https://github.com/strakzkernel/Mido $HOME/SK
  

git clone https://android.googlesource.com/platform/prebuilts/clang/host/linuxx86 clang
export ARCH=arm64
cd build
./7.0 opt
cd ${HOME}/dragon
git add .
git commit m "dragon TC"
git remote add origin https://github.com/strakzkernel/dtc.git
git push u origin master
