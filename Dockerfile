FROM nginx:alpine

WORKDIR /etc/nginx
COPY ./nginx.conf ./conf.d/default.conf
COPY ./certs/fullchain.pem ./fullchain.pem
COPY ./certs/privkey.pem ./privkey.pem
EXPOSE 80
ENTRYPOINT [ "nginx" ]
CMD [ "-g", "daemon off;" ]
