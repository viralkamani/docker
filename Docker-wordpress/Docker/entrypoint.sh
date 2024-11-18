#!/bin/bash

# Replace the placeholders in wp-config.php with environment variables
sed -i "s/define( 'DB_NAME', *'' );/define( 'DB_NAME', '${WORDPRESS_DB_NAME}' );/" /var/www/html/wp-config.php \
&& sed -i "s/define( 'DB_USER', *'' );/define( 'DB_USER', '${WORDPRESS_DB_USER}' );/" /var/www/html/wp-config.php \
&& sed -i "s/define( 'DB_PASSWORD', *'' );/define( 'DB_PASSWORD', '${WORDPRESS_DB_PASSWORD}' );/" /var/www/html/wp-config.php \
&& sed -i "s/define( 'DB_HOST', *'' );/define( 'DB_HOST', '${WORDPRESS_DB_HOST}' );/" /var/www/html/wp-config.php

# Start Apache in the foreground
exec apachectl -D FOREGROUND

