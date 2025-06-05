<h1>Party Parrot App</h1>

<img src='media/images/party-parrot.gif' alt='parrot' height="200" width="200">
<br>
<br>
<h3></h3>

Sample Python application on Django with PostgreSQL database.

<h3>Requirements</h3>

____


- django 4.0.1
- Pillow 9.0.0
- psycopg2-binary 2.9.3
- django-prometheus 2.2.0

<h3>Deployment</h3>

____


- install uv
```shell
curl -LsSf https://astral.sh/uv/install.sh | sh
```
- install Python 3.8
```shell
uv python install 3.8
```
- pin Python version
```shell
uv python pin 3.8
```

- Set environment export for variables (put them in .env file, for example):
```yaml
      DJANGO_DB_HOST=db
      DJANGO_DB_NAME=app
      DJANGO_DB_USER=worker
      DJANGO_DB_PASS=worker
      DJANGO_DB_PORT="5432"
      DJANGO_DEBUG="False"
```

- migrate database:
```shell
uv run --env-file .env migrate
```

- start application:
```shell
uv run --env-file .env manage.py runserver 0.0.0.0:8000
```
