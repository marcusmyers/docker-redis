FROM gliderlabs/alpine
MAINTAINER Mark Myers <marcusmyers@gmail.com>

# Install packages
RUN apk-install redis supervisor

# For supervised
ADD supervisord.conf /etc/supervisord.conf

EXPOSE 6379

CMD ["/usr/bin/supervisord"]
