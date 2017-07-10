#!/bin/bash

echo "Provisioning virtual machine"

sudo apt-get install software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install -y ansible
echo "cd /vagrant" >> /home/vagrant/.bashrc
echo "alias ap='ansible-playbook'" >> /home/vagrant/.bashrc
chmod 600 /home/vagrant/.ssh/id_rsa
chmod 600 /home/vagrant/.ssh/id_rsa.pub
chmod 777 /etc/ansible
cp /vagrant/hosts /etc/ansible/hosts
