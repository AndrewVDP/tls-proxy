FROM nginx:1

WORKDIR /usr/src

ADD start.sh /usr/src/
COPY conf/ $NGINX_PREFIX/conf/

ENTRYPOINT ./start.sh
