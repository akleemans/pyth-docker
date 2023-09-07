# syntax=docker/dockerfile:1.4
FROM python:3.11-alpine

WORKDIR /app

COPY requirements.txt /app
RUN pip3 install -r requirements.txt

COPY . /app

EXPOSE 8000

CMD ["gunicorn"  , "-b", "0.0.0.0:8000", "server:app"]
