#!/bin/bash

#script de instalacion de herramientas sobre termux

#actualiza termux
apt update && apt upgrade

#herramientas comunes
pkg install -y perl
pkg install -y git
pkg install -y wget
pkg install -y curl
pkg install -y python

#nikto
git clone https://github.com/sullo/nikto.git
#cambiar enlace
ln -s /data/data/com.termux/files/home/nikto/program/nikto.pl nikto

#nmap
pkg install -y nmap

#metasploit
wget https://raw.githubusercontent.com/Hax4us/Metasploit_termux/master/metasploit.sh
chmod +x metasploit.sh

#routersploit
git clone https://github.com/threat9/routersploit
cd routersploit
pip install requests
pip install future
pip install -r requirements.txt
pip install -r requirements-dev.txt
cd $HOME

#almacenamiento externo
termux-setup-storage
