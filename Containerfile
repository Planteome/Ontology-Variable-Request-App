FROM python:3.6

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /app/requirements.txt
RUN pip install setuptools==45
RUN pip install -r /app/requirements.txt

COPY . /app/
WORKDIR /app

EXPOSE 5000

WORKDIR /app
ENTRYPOINT python3 serve.py
