FROM python:3

COPY requirements.txt /app/requirements.txt

WORKDIR /app

RUN set -ex \
    && pip install --upgrade pip \
    && pip install --no-cache-dir -r requirements.txt

COPY . /app

# EXPOSE 8000
# CMD ["gunicorn", "--bind", ":8000", "--workers", "3", "django_docker.wsgi:application"]

CMD gunicorn django_docker.wsgi:application --bind 0.0.0.0:$PORT
