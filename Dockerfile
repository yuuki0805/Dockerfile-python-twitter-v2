FROM python:alpine
RUN pip install python-twitter-v2
RUN mkdir /docker
COPY docker-entrypoint.sh /usr/local/bin
RUN chmod +x /usr/local/bin/docker-entrypoint.sh
VOLUME ["/docker"]
ENTRYPOINT ["docker-entrypoint.sh"]
