install:
		PIPENV_VENV_IN_PROJECT=1 pipenv install --python 3.7

pull_upstream:
		git rebase upstream/master

run_jupyter:
		PIPENV_VENV_IN_PROJECT=1 pipenv run jupyter notebook


