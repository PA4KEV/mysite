FROM python:3.9.5

ARG SECRET_KEY
ENV SECRET_KEY $SECRET_KEY
ARG DEBUG
ENV DEBUG $DEBUG
ARG DJANGO_ALLOWED_HOSTS
ENV DJANGO_ALLOWED_HOSTS $DJANGO_ALLOWED_HOSTS
ARG DJANGO_LOGLEVEL
ENV DJANGO_LOGLEVEL $DJANGO_LOGLEVEL

ARG MARIADB_NAME
ENV MARIADB_NAME $MARIADB_NAME
ARG MARIADB_USER
ENV MARIADB_USER $MARIADB_USER
ARG MARIADB_PASSWORD
ENV MARIADB_PASSWORD $MARIADB_PASSWORD
ARG MARIADB_HOST
ENV MARIADB_HOST $MARIADB_HOST
ARG MARIADB_PORT
ENV MARIADB_PORT $MARIADB_PORT

ARG STATIC_ACCESS_KEY_ID
ENV STATIC_ACCESS_KEY_ID $STATIC_ACCESS_KEY_ID
ARG STATIC_SECRET_KEY
ENV STATIC_SECRET_KEY $STATIC_SECRET_KEY
ARG STATIC_BUCKET_NAME
ENV STATIC_BUCKET_NAME $STATIC_BUCKET_NAME
ARG STATIC_ENDPOINT_URL
ENV STATIC_ENDPOINT_URL $STATIC_ENDPOINT_URL

ARG PYTHONDONTWRITEBYTECODE
ENV PYTHONDONTWRITEBYTECODE $PYTHONDONTWRITEBYTECODE
ARG PYTHONUNBUFFERED
ENV PYTHONUNBUFFERED $PYTHONUNBUFFERED

WORKDIR /opt/services/portfolio/src

ADD requirements.txt ./

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        curl \
    && rm -rf /var/lib/apt/lists/* \
    && python -m pip install --upgrade pip \
    && python -m pip install --no-cache-dir -r requirements.txt

ADD . /opt/services/portfolio/src

RUN python portfolio/manage.py collectstatic --no-input
# && python portfolio/manage.py makemigrations \
# && python portfolio/manage.py migrate

EXPOSE 8000

CMD ["gunicorn", "-c", "config/gunicorn/conf.py", "--bind", ":8000", "--chdir", "/opt/services/portfolio/src/portfolio", "portfolio.wsgi:application"]

# CMD ["python", "portfolio/manage.py", "runserver", "0.0.0.0:8000"]
