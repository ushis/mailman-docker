FROM python:3.4

RUN pip install 'mailman==3.0.3' 'psycopg2' && \
  useradd -r -m -d /var/lib/mailman -s /bin/bash mailman

WORKDIR /var/lib/mailman

USER mailman:mailman

VOLUME /var/lib/mailman

EXPOSE 8001 8024

CMD /usr/local/bin/master
