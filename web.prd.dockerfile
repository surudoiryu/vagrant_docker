FROM nginx:1.10-alpine

ADD ./default.prd.conf /etc/nginx/conf.d/default.conf

COPY public /var/www/public
