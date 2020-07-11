FROM alpine:3.12

RUN apk add --no-cache \
  libc-dev \
  python3 \
  py3-pip \
  py3-psutil \
  py3-psycopg2 \
  py3-wheel

RUN pip3 install 'mailman==3.3.1'

RUN addgroup -S mailman && \
  adduser -h /var/lib/mailman -s /bin/sh -S -D mailman mailman

WORKDIR /var/lib/mailman

USER mailman:mailman

VOLUME /var/lib/mailman

EXPOSE 8001 8024

CMD /usr/bin/master
