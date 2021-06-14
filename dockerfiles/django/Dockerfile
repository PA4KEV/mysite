FROM python:3.9.5

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        postgresql-client \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/app

COPY requirements.txt ./

RUN python -m pip install -r requirements.txt

COPY . .

CMD ["uwsgi", "--http", ":8000", "--wsgi-file", "portfolio/test.py"]
