FROM ubuntu:16.04

RUN apt-get update -y
RUN apt-get install -y python-pip

COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt

ENTRYPOINT [ "python" ]
CMD [ "src/api.py" ]