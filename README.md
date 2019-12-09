# docker-linux-python-flask

- state-mapping 专用；
- 为解决全局变量飘忽不定问题，在 master 的基础上将 worker 从 4 改为 1（CMD gunicorn -w 4 -b 0.0.0.0:8000 app:app -> CMD gunicorn -w 4 -b 0.0.0.0:8000 app:app）。
