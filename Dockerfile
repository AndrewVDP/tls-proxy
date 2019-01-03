FROM nginx:1

WORKDIR /usr/src

ADD start.sh /usr/src/
COPY conf/ /etc/nginx/

ENTRYPOINT ./start.sh
