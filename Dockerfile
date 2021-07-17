FROM python:3.9

RUN mkdir /app
WORKDIR /app

COPY app.py pyproject.toml /app/

RUN pip install quart

CMD hypercorn --workers 2 --worker-tmp-dir /dev/shm --bind 0.0.0.0:8000 app
