FROM nginx:1.10

ADD ./default.dev.conf /etc/nginx/conf.d/default.conf
