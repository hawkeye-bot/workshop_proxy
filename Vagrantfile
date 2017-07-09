# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"

   config.ssh.forward_agent = true
  
   config.vm.provision "file", source: "~/.gitconfig", destination: ".gitconfig"
   config.vm.provision "file", source: "~/.gitignore_global", destination: ".gitignore_global"
   config.vm.provision "file", source: "~/.ssh/id_rsa", destination: ".ssh/id_rsa"
   config.vm.provision "file", source: "~/.ssh/id_rsa.pub", destination: ".ssh/id_rsa.pub"
   config.vm.provision "shell" do |s|
	  s.path = "provision.sh"
   end
end
