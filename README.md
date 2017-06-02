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


----------FOR PRODUCTION--------------
build you images:
docker build -t mydockerhub/my-app .
docker build -t mydockerhub/my-web .

file: docker-compose.prod.yml
change the images to your own images

file: default.prd.conf
Where you see paths like/etc/letsencrypt/live/example.com, you can change example.com for your own domain.

Generate the certs to the directory: /www/certs/live/yourdomain.com/

Create .env on the server and fill it in

Run command to test locally: LE_DIR=./certs docker-compose -f docker-compose.prod.yml up
