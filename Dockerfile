FROM httpd

WORKDIR /usr/local/apache2/htdocs/
COPY index.html /usr/local/apache2/htdocs/

EXPOSE 80

CMD [“/usr/sbin/httpd”,” -D”,” FOREGROUND”]