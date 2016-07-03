FROM python:2

RUN pip install 'postorius==1.0.3' 'whitenoise' 'psycopg2' 'gunicorn' && \
  useradd -r -m -d /var/lib/postorius -s /bin/bash postorius

WORKDIR /var/lib/postorius

COPY manage.py settings.py urls.py wsgi.py ./

RUN python manage.py collectstatic --noinput

USER postorius:postorius

EXPOSE 8000

CMD gunicorn --bind '0.0.0.0:8000' --workers 2 wsgi
