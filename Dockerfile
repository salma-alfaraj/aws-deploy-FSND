FROM python:stretch

COPY . /app
WORKDIR /app

RUN PIP3 install --upgrade pip
RUN PIP3 install -r requirements.txt

ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]