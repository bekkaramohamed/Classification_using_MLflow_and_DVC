FROM python:3.8-slim-buster

# for AWS deployment
RUN apt update -y && apt install awscli -y

WORKDIR /app

COPY . /app

RUN pip install -r requirements.txt

CMD ["python3", "app.py"] 