PYTHON=3.8
BASENAME=$(shell basename $(CURDIR))

env:
	conda create -n $(BASENAME)  python=$(PYTHON)

setup:
	conda install --file requirements.txt
	pre-commit install

format:
	black .
	isort .

lint:
	pytest src --flake8 --pylint --mypy

utest:
	PYTHONPATH=src pytest test/utest --cov=src --cov-report=html --cov-report=term --cov-config=setup.cfg

cov:
	open htmlcov/index.html
