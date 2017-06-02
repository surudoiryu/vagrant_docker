# vagrant_docker
Docker in a Vagrant box which will automaticly run the image on startup and create a webserver.

Do first:
create .env file

Run commands:
```
docker-compose up
docker-compose exec app php artisan key:generate
docker-compose exec app php artisan optimize
docker-compose exec app php artisan migrate --seed
```


Vagrant run
```
vagrant up 
vagrant ssh
docker-compose exec app php artisan key:generate
docker-compose exec app php artisan optimize
docker-compose exec app php artisan migrate --seed
```

Go with your browser to:
http://192.168.50.666/
