echo '#######################################################################'
echo '#                          DOCKER Setup                               #'
echo '#######################################################################'
echo
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
echo "installing lazydocker"
curl https://raw.githubusercontent.com/jesseduffield/lazydocker/master/scripts/install_update_linux.sh | bash
sudo mv lazydocker /usr/local/bin
echo "done"
