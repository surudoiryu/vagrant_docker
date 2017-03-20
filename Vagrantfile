# -*- mode: ruby -*-
# vi: set ft=ruby :

unless Vagrant.has_plugin?("vagrant-docker-compose")
  system("vagrant plugin install vagrant-docker-compose")
  puts "Dependencies installed, please try the command again."
  exit
end

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"

  config.vm.provision :shell, inline: "apt-get update"
  config.vm.provision :docker
  config.vm.provision :docker_compose,
	yml: [
      "/vagrant/docker-compose.yml"
    ],
	rebuild: true, 
	project_name: "MircoServices",
    run: "always"
  
  #IP to connecto to in browser
  config.vm.network "private_network", ip: "192.168.33.10"
end
