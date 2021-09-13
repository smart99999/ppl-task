FROM docker.io/library/nginx:latest
RUN apt update && \
    apt -y install apache2-utils && \
    mkdir -p /usr/share/nginx/html/auth
COPY ./nginx/default.conf /etc/nginx/conf.d/
WORKDIR /usr/share/nginx/html/
COPY ./nginx/index.html ./
COPY ./nginx/index.html ./auth/
ARG LOGIN
ARG PASSWORD
RUN htpasswd -bc /etc/nginx/.htpasswd ${LOGIN:-admin} ${PASSWORD}




