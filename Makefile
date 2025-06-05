export UV_ENV_FILE = .env

all: migrate run

setup:
	curl -LsSf https://astral.sh/uv/install.sh | sh

migrate:
	uv run manage.py migrate

run:
	uv run uwsgi --ini uwsgi.ini
