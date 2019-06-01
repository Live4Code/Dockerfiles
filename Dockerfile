FROM nginx

RUN apt-get update && apt-get install -y --no-install-recommends \
                redis-server \
		supervisor \
	&& rm -rf /var/lib/apt/lists/*

COPY ./supervisord.conf /etc/supervisor/supervisord.conf
COPY ./redis.conf /etc/redis.conf

EXPOSE 80
EXPOSE 6793

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/supervisord.conf"]
