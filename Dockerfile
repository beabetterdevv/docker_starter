FROM python:3.10.2-slim as base

WORKDIR /app

COPY . .

RUN python -m pip install -r requirements.txt

EXPOSE 8080

CMD python ./app.py
