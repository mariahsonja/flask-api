FROM python:3.8

COPY requirements.txt .

RUN pip install --upgrade pip setuptools wheel && pip install -r requirements.txt

COPY source/app /source/app

WORKDIR /source

EXPOSE 5000

CMD gunicorn -b 0.0.0.0:5000 -w 2 -t 120 app.app:APP
