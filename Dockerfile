FROM python:3.10-slim-buster

RUN apt-get update \
    && apt-get install -y --no-install-recommends ffmpeg \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN apt-get -y update

RUN apt-get -y install git gcc python3-dev

COPY . /app/
WORKDIR /app/
RUN pip3 install -U -r requirements.txt

CMD [ "python3", "-m" , "Rose"]
