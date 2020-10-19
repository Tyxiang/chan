FROM python:latest

RUN pip install --upgrade pip

RUN pip install pandas==0.25.3 

RUN pip install flask gunicorn --no-cache-dir
RUN pip install Flask-Cors
RUN pip install jqdatasdk

WORKDIR /app

EXPOSE 8000

CMD gunicorn -w 4 -b 0.0.0.0:8000 app:app
