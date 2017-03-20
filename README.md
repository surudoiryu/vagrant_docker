# vagrant_docker
Docker in a Vagrant box which will automaticly run the image on startup and create a webserver.

Run commands:
```
vagrant plugin install vagrant-docker-compose
```

```
vagrant init
```

Change or add the next lines in the Vagrant file:
```
Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
 
  config.vm.provision :docker
  config.vm.provision :docker_compose
end
```

Save and run
```
vagrant up 
vagrant ssh
docker run --name webserver -v /www:/usr/share/nginx:ro -d -p 8080:80 nginx
```

Go with your browser to:
http://192.168.33.10:8080/
