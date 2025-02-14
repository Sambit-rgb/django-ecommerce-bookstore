FROM python:3.13.2-bullseye

RUN apt-get update && apt-get upgrade -y

WORKDIR /app

COPY requirements.txt ./requirements.txt

RUN pip3 install -r requirements.txt

COPY . .