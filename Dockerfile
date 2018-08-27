FROM wptestlabs/php7fpm-wpmin
#  This image (built) is on hub.docker.com as wptestlabs/php7fpm-wpcli

curl -o /bin/wp-cli.phar https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar; \
ln -srf /bin/wp-cli.phar /bin/wp; \
chmod +x /bin/wp-cli.phar /bin/wp;

#   -F  -- Force to stay in Foreground ie Don't Deamonize 
CMD ["/usr/sbin/php-fpm7", "-F"]
