FROM eboraas/apache
RUN apt-get update
RUN apt-get install -y ruby-full
RUN gem install sass
RUN gem install bourbon
RUN gem install neat 
RUN mkdir -p /var/www/stylesheets  
CMD /usr/sbin/apache2ctl -D BACKGROUND && sass --watch /var/www/stylesheets:/var/www/stylesheets -E "UTF-8"
