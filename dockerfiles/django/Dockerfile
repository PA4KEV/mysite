FROM python:3.9.5

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        curl \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /opt/services/portfolio/src

RUN python -m pip install --upgrade pip

COPY requirements.txt ./

RUN python -m pip install -r requirements.txt

COPY . /opt/services/portfolio/src

# collectstatic belongs in the Dockerfile.
# It would crash because of a KeyError: 'SECRET_KEY'
# During build time, the actual secret key does not matter, so the get_random_secret_key function was used.
RUN python portfolio/manage.py collectstatic --no-input

EXPOSE 8000

CMD ["gunicorn", "-c", "config/gunicorn/conf.py", "--bind", ":8000", "--chdir", "/opt/services/portfolio/src/portfolio", "portfolio.wsgi:application"]

# CMD ["python", "portfolio/manage.py", "runserver", "0.0.0.0:8000"]
