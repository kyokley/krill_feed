FROM python:2.7-alpine

RUN apk add --no-cache \
        libffi-dev \
		git \
        gcc \
	    ca-certificates \
        musl-dev \
        openssl-dev

COPY requirements.txt /app/requirements.txt

RUN pip install -r /app/requirements.txt

COPY sources.txt /app/sources.txt
WORKDIR /app

CMD ["krill++", "-u", "30", "-S", "sources.txt"]
