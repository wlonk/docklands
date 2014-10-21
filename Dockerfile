FROM python:2.7

RUN apt-get install -y libmemcached-dev

RUN mkdir /code
WORKDIR /code
ADD requirements.txt /code/
RUN pip install -r requirements.txt
ADD . /code/

RUN adduser --disabled-password --gecos '' docker
USER docker

ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE 1
