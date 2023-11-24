FROM python:latest

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

ADD . /code
WORKDIR /code

EXPOSE 8000

RUN pip install -r requirements.txt

CMD ["python", "app.py"]
