FROM gliderlabs/alpine
MAINTAINER Mark Myers <marcusmyers@gmail.com>

# Install packages
RUN apk-install redis

EXPOSE 6379

CMD ["/usr/bin/redis-server"]
