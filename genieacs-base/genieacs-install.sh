#!/bin/sh
set -e

sudo curl -sL https://deb.nodesource.com/setup_6.x | bash
sudo apt-get -y install nodejs
sudo chmod -R 777 /tmp

#GenieACS
git clone https://github.com/zaidka/genieacs.git
cd genieacs/

sudo npm install
sudo npm run configure
sudo npm run compile

sudo cp /opt/config.json config/config.json



