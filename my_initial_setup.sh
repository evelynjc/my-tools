sudo apt update
sudo apt upgrade -y
sudo apt autoremove
sudo apt clean
sudo apt install -y vim git python3 python3-pip httpie screen dos2unix
git config --global user.email "chlwlgp132@gmail.com"
git config --global user.name "JHJee"
# for cross-platform line ending compatibility in Windows
#git config --global core.autocrlf true
# for cross-platform line ending compatibility in Linux
#git config --global core.autocrlf input

mv ./vimrc ~/.vimrc
cp ./bash_aliases ~/.bash_aliases && source ~/.bashrc

# Docker Installation
# sudo apt update && sudo apt upgrade -VV
# sudo reboot
# curl -fsSL https://get.docker.com -o get-docker.sh
# sudo sh get-docker.sh
# sudo usermod -aG docker pi
# # if /var/run/docker.sock permission denied ERROR
# # sudo chmod 666 /var/run/docker.sock
