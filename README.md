# docker-linux-python-flask

在 master 的基础上将 worker 从 4 改为 1（CMD gunicorn -w 4 -b 0.0.0.0:8000 app:app -> CMD gunicorn -w 4 -b 0.0.0.0:8000 app:app）；
