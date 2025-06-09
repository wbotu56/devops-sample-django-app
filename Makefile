.PHONY: all setup migrate run

export UV_ENV_FILE = .env

all: migrate run

setup:
	curl -LsSf https://astral.sh/uv/install.sh | sh

migrate: .env
	uv run manage.py migrate

run: .env
	uv run uwsgi --ini uwsgi.ini
