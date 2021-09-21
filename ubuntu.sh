#!/bin/bash

echo "GREAT POWER COMES WITH GREAT RESPONSIBILITY!"

sudo apt-get -y update
sudo apt-get -y dist-upgrade
sudo apt-get -y autoremove
sudo apt-get -y autoclean
sudo add-apt-repository ppa:longsleep/golang-backports
sudo add-apt-repository ppa:wireshark-dev/stable
sudo add-apt-repository ppa:jonathonf/vim
sudo add-apt-repository ppa:jonathonf/vim-daily
sudo apt-get -y update
sudo apt-get -y dist-upgrade
sudo apt-get -y autoremove
sudo apt-get -y autoclean
sudo apt-get install -y apache2
sudo apt-get install -y jq
sudo apt-get install -y libcurl4-openssl-dev libxml2 libxml2-dev libxslt1-dev ruby-dev build-essential libgmp-dev zlib1g-dev
sudo apt-get install -y python3-dnspython
sudo apt-get install -y libssl-dev libffi-dev python-dev
sudo apt-get install -y rename
sudo apt-get install -y ruby-full
sudo apt-get install -y libpcap-dev
sudo apt-get install -y htop
sudo apt-get install -y libldns-dev
sudo apt-get install -y python-setuptools
sudo apt-get install -y build-essential
sudo apt-get install -y python3-pip
sudo apt-get install -y python
sudo apt-get install -y curl
sudo apt-get install -y git
sudo apt-get install -y default-jdk
sudo apt-get install -y gpgv2 autoconf bison postgresql libaprutil1 openssl libpq-dev libreadline6-dev libreadline-dev libsqlite3-dev libssl-dev locate
sudo apt-get install -y libsvn1 libtool libxslt-dev wget libyaml-dev ncurses-dev postgresql-contrib xsel zlib1g git-core gawk libffi-dev libgdm-dev libncurses5-dev dirmngr python3-magic
sudo apt-get install -y gcc
sudo apt-get install -y tree
sudo apt-get install -y vim
sudo apt-get install -y wireshark
sudo apt-get install -y nmap
sudo apt-get install -y parallel
sudo apt-get install -y net-tools
sudo apt-get install -y jsbeautifier

echo "installing feroxbuster"
curl -sL https://raw.githubusercontent.com/epi052/feroxbuster/master/install-nix.sh | bash
echo "moving ./feroxbuster to /usr/local/bin"
sudo mv feroxbuster /usr/local/bin
echo "done"

echo "installing metasploit"
curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && \
  chmod 755 msfinstall && \
  ./msfinstall
echo "done"

echo "creating a tools folder in ~/"
mkdir ~/tools
cd ~/tools/
echo "done"

echo "installing seclists"
git clone https://github.com/danielmiessler/SecLists.git
cd ~/tools/
echo "done"

echo "installing amass"
git clone https://github.com/OWASP/Amass.git
cd ~/tools/
echo "dont forget to run: go install github.com/OWASP/Amass/v3/... "
echo "done"

echo "installing massdns"
git clone https://github.com/blechschmidt/massdns.git
cd ~/tools/
echo "make the file to run"
echo "done"

echo "installing masscan"
git clone https://github.com/robertdavidgraham/masscan.git
cd ~/tools/
echo "run make"
echo "done"

echo "installing SQLMAP"
git clone https://github.com/sqlmapproject/sqlmap.git
cd ~/tools/
echo "done"

echo "installing secretfinder"
git clone https://github.com/m4ll0k/SecretFinder.git
cd ~/tools/
echo "done"

echo "installing favfreak"
git clone https://github.com/devanshbatham/FavFreak.git
cd ~/tools/
echo "done"

echo "installing nikto"
git clone https://github.com/sullo/nikto.git
cd ~/tools/
echo "done"

echo "installing dirsearch"
git clone https://github.com/maurosoria/dirsearch.git
cd ~/tools/
echo "done"

echo "installing Linkfinder"
git clone https://github.com/GerbenJavado/LinkFinder.git
cd ~/tools/
echo "done"

echo "installing noslqi"
git clone https://github.com/Charlie-belmer/nosqli.git
cd ~/tools/
echo "done"

echo "installing arjun"
git clone https://github.com/s0md3v/Arjun.git
cd ~/tools/
echo "done"

echo "installing corscanner"
git clone https://github.com/diwusec/corscanner.git
cd ~/tools/
echo "done"

echo "installing Eyewitness"
git clone https://github.com/FortyNorthSecurity/EyeWitness.git
cd ~/tools/
echo "done"

echo "installing paramspider"
git clone https://github.com/devanshbatham/ParamSpider.git
cd ~/tools/
echo "done"

echo "installing assetfinder"
go install github.com/tomnomnom/assetfinder@latest
echo "done"

echo "installing proxify"
go install github.com/projectdiscovery/proxify/cmd/proxify@latest
echo "done"

echo "installing dnsx"
go install github.com/projectdiscovery/dnsx/cmd/dnsx@latest
echo "done"

echo "installing gron"
go install github.com/tomnomnom/gron@latest
echo "done"

echo "installing asnip"
go install github.com/harleo/asnip@latest
echo "done"

echo "installing shuffledns"
go install github.com/projectdiscovery/shuffledns/cmd/shuffledns@latest
echo "done"

echo "installing meg"
go install github.com/tomnomnom/meg@latest
echo "done"

echo "installing hakrawler"
go install github.com/hakluke/hakrawler@latest
echo "done"

echo "installing gospider"
go install github.com/jaeles-project/gospider@latest
echo "done"

echo "installing subjs"
go install github.com/lc/subjs@latest
echo "done"

echo "installing fff"
go install github.com/tomnomnom/fff@latest
echo "done"

echo "installing httprobe"
go install github.com/tomnomnom/httprobe@latest 
echo "done"

echo "installing unfurl"
go install github.com/tomnomnom/unfurl@latest 
echo "done"

echo "installing waybackurls"
go install github.com/tomnomnom/waybackurls@latest
echo "done"

echo "installing ffuf"
go install github.com/ffuf/ffuf@latest
echo "done"

echo "installing naabu"
go install github.com/projectdiscovery/naabu/v2/cmd/naabu@latest
echo "done"

echo "installing gau"
go install github.com/lc/gau@latest
echo "done"

echo "installing subfinder"
go install github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
echo "done"

echo "installing nuclei"
go install github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest 
echo "done"

echo "installing httpx"
go install github.com/projectdiscovery/httpx/cmd/httpx@latest
echo "done"

echo "installing qsreplace"
go install github.com/tomnomnom/qsreplace@latest
echo "done"

echo "installing anew"
go install github.com/tomnomnom/anew@latest
echo "done"

echo "installing Gf"
go install github.com/tomnomnom/gf@latest
echo "done installing gf, now adding the patterns"

echo -e "Gf patterns"
cp -r $GOPATH/pkg/mod/github.com/tomnomnom/gf@v0.0.0-20200618134122-dcd4c361f9f5/examples ~/.gf
echo "installing GF patterns"
cd ~
git clone https://github.com/1ndianl33t/Gf-Patterns.git
sudo mv ~/Gf-Patterns/*.json ~/.gf

echo "create a recon folder in ~/"
mkdir ~/gorecon

echo -e "\n\n\n\nDone! All tools are set up in ~/tools"

sudo apt-get -y update
sudo apt-get -y dist-upgrade
sudo apt-get -y autoremove
sudo apt-get -y autoclean

ls -la

echo "happy hacking"
