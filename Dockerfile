FROM nginx

# Get updates and wget
RUN apt-get -y update && apt-get -y install wget

# Create Dirs and copy files.
#RUN mkdir -p /var/log/{nginx,app} && \
#    mkdir -p /var/cache/nginx

#RUN mv /etc/nginx/nginx.conf /etc/nginx/nginx.conf.orig

#COPY ./nginx/nginx.conf /etc/nginx/nginx.conf
#COPY ./nginx/conf.d /etc/nginx/conf.d

# Create index.html for localhsot.
#RUN echo "localhost.conf" > /usr/share/nginx/html/index.html

# Copy entrypoint script and define it.
#COPY ./nginx/entrypoint.sh /bin/
#RUN ["chmod", "+x", "/bin/entrypoint.sh"]
#ENTRYPOINT ["/bin/entrypoint.sh"]

ADD ./conf/default.conf /etc/nginx/conf.d/default.conf
ADD ./src /usr/share/nginx/html

CMD ["nginx", "-g", "daemon off;"]