FROM python:3.9.5

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

EXPOSE 8000

CMD ["gunicorn", "-c", "config/gunicorn/conf.py", "--bind", ":8000", "--chdir", "/opt/services/portfolio/src/portfolio", "portfolio.wsgi:application"]
