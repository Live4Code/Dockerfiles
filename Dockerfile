FROM iojs:1-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
		git \
		make \
		g++ \
		python \
                supervisor \
	&& rm -rf /var/lib/apt/lists/*
