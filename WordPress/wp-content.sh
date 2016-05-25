chown www-data:www-data -R *
find . -type d -exec chmod 755 {} \;
find . -type f -exec chmod 644 {} \;
chown www-data:www-data wp-content
chown www-data:www-data -R .htaccess
