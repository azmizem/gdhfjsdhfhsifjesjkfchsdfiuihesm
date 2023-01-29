
sudo apt update
sleep 3
sudo apt install apt-transport-https ca-certificates curl software-properties-common
sleep 3
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
sleep 3
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sleep 3
sudo apt update
sleep 3
sudo apt update
sleep 3

apt-cache policy docker-ce
sleep 3
sudo apt install docker-ce
sleep 3
sudo systemctl status docker
sleep 3
sleep 3
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sleep 3
sudo chmod +x /usr/local/bin/docker-compose
sleep 3
docker-compose --version
sleep 5
mkdir listmonk
sleep 2
sh -c "$(curl -fsSL https://raw.githubusercontent.com/knadh/listmonk/master/install-prod.sh)"
