FROM tsutomu7/alpine-python

RUN apk add --no-cache \
	ca-certificates \
	curl \
	libressl

RUN set -x \
	&& apk add --no-cache --virtual .build-deps \
		autoconf \
		automake \
		build-base \
		curl-dev \
		git

COPY requirements.txt /app/requirements.txt

RUN pip install -r /app/requirements.txt

COPY sources.txt /app/sources.txt
WORKDIR /app

CMD ["krill++", "-u", "30", "-S", "sources.txt"]
