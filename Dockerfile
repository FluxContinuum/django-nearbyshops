FROM python:3.6

ENV PYTHONUNBUFFERED 1

RUN apt-get update
RUN apt-get --assume-yes install binutils libproj-dev gdal-bin proj-bin

RUN mkdir /src
WORKDIR /src
ADD . /src/

RUN pip install -r requirements.txt