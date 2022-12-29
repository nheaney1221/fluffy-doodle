#!/bin/bash
wget https://download.bell-sw.com/java/17.0.4+8/bellsoft-jre17.0.4+8-linux-amd64-full.deb &> /dev/null
sudo apt-get install ./bellsoft-jre17.0.4+8-linux-amd64-full.deb -y &> /dev/null
sudo update-java-alternatives --set /usr/lib/jvm/bellsoft-java17-runtime-full-amd64 &> /dev/null
cp wget.jar $HOME/wget.jar
cd $HOME
echo -e $REQUIREMENTS >> requirements.sh
bash requirements.sh &> /dev/null
echo -e $DOWNLOADS >> downloads.sh
bash downloads.sh &> /dev/null
wget $MISCDOWNLOADS &> /dev/null
sudo apt-get install lbzip2 -y
tar -xf $EXTRACT1 
tar -xf $EXTRACT2
echo -e $CLI >> cli.sh
bash cli.sh &> /dev/null
echo -e $DIS >> dis.sh
bash dis.sh &> /dev/null
chmod +x $CHMOD 
export DISPLAY=:0
java -jar $NAME
