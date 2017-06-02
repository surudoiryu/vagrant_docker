# -*- mode: ruby -*-
# vi: set ft=ruby :

unless Vagrant.has_plugin?("vagrant-docker-compose")
  system("vagrant plugin install vagrant-docker-compose")
  unless Vagrant.has_plugin?("vagrant-env")
    system("vagrant plugin install vagrant-env")
  end
  puts "Dependencies installed, please try the command again."
  exit
end

unless Vagrant.has_plugin?("vagrant-env")
  system("vagrant plugin install vagrant-env")
  puts "Dependencies installed, please try the command again."
  exit
end

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  config.env.enable
  config.vm.network "public_network", ip: "192.168.50.666"
  config.vm.network "forwarded_port", guest: 80, host: 80, auto_correct: true
  config.vm.network "forwarded_port", guest: 443, host: 443, auto_correct: true

  config.vm.provision :docker
  config.vm.provision :docker_compose,
    yml: [
      "/vagrant/docker-compose.yml"
    ],
    rebuild: true,
    project_name: "Laravel App",
    run: "always"
end
