FROM python:latest

RUN pip install --upgrade pip

RUN pip install flask gunicorn --no-cache-dir
RUN pip install Flask-Cors
RUN pip install jqdatasdk
RUN pip install matplotlib
RUN pip install numpy

RUN pip install mpl-finance

RUN easy_install pandas
RUN pip install --only-binary :all: pandas

WORKDIR /app

EXPOSE 8000

CMD gunicorn -w 4 -b 0.0.0.0:8000 app:app
