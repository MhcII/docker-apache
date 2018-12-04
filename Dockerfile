FROM webdevops/apache:ubuntu-16.04

LABEL maintainer="Eric Pfeiffer <computerfr33k@users.noreply.github.com>"

ENV WEB_PHP_SOCKET=php-fpm:9000

ENV WEB_DOCUMENT_ROOT=/var/www/

ENV WEB_PHP_TIMEOUT=60

EXPOSE 80 443

WORKDIR /var/www/

COPY vhost.conf /etc/apache2/sites-enabled/vhost.conf

ENTRYPOINT ["/opt/docker/bin/entrypoint.sh"]

CMD ["supervisord"]
