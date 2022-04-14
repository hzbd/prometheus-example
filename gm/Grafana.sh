# sudo apt-get install -y apt-transport-https
# sudo apt-get install -y software-properties-common wget
# wget -q -O - https://packages.grafana.com/gpg.key | sudo apt-key add -

# # Alternatively you can add the beta repository, see in the table above
# sudo add-apt-repository "deb https://packages.grafana.com/oss/deb stable main"

# sudo apt-get update
# sudo apt-get install grafana
# sudo systemctl daemon-reload
# sudo systemctl start grafana-server
# # sudo systemctl status grafana-server
# sudo systemctl enable grafana-server.service
# grafana-cli plugins install grafana-image-renderer

# #for password change run this command, the default user and password would be "admin"
# #grafana-cli --config "/etc/configuration/" admin reset-admin-password mynewpassword


apt install figlet -y && figlet Grafana Installation
git clone https://github.com/djay21/Grafana-Monitoring.git
cd Grafana-Monitoring 
docker-compose up -d || sudo docker-compose up -d
echo -e "echo -e "\n \n Grafana is running on port 6003................ "
