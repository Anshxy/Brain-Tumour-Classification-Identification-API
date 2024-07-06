# Dockerfile
FROM python:3.9-slim

ENV PYTHONUNBUFFERED True

ENV APP_HOME /app

WORKDIR $APP_HOME

COPY . .


ENV PORT 8080
ENV FLASK_ENV=production
ENV FLASK_APP=app.py

RUN pip install --no-cache-dir --upgrade pip
RUN pip cache purge
RUN pip install --no-cache-dir -r requirements.txt


CMD exec gunicorn --bind :$PORT --workers 1 --threads 8 --timeout 0 app:app

