FROM python:latest

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

ADD . /code
WORKDIR /code

RUN pip install -r requirements.txt

EXPOSE 8000

CMD ["python", "app.py"]
