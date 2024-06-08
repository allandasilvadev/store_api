run:
	@uvicorn store.main:app --reload

precommit-install:
	@poetry run pre-commit install

test:
	@poetry run pytest -vv --cache-clear

test-matching:
	@poetry run pytest -s -rx -k $(K) --pdb store ./tests/
