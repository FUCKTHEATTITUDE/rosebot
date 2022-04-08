FROM python:3.10-slim-buster

WORKDIR /root/Rose

RUN apt-get -y update

RUN apt-get -y install git gcc python3-dev

COPY requirements.txt requirements.txt

RUN pip3 install -U -r requirements.txt

CMD [ "python3", "-m" , "Rose"]
