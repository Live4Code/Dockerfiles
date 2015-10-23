FROM 4.2-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
		git \
		make \
		g++ \
		python \
                openssh-client \
                supervisor \
	&& rm -rf /var/lib/apt/lists/*
