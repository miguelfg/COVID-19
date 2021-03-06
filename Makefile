VIRTUALENV := venv/

# install:
# 		PIPENV_VENV_IN_PROJECT=1 pipenv install --python 3.7

install_venv:
		virtualenv $(VIRTUALENV) --python=python3.7

install_reqs:
		. $(VIRTUALENV)bin/activate; pip install --no-deps -r requirements.txt
		
pull_upstream:
		# git rebase upstream/master
		git fetch upstream
		git merge -s recursive -Xtheirs upstream/master
		git push

run_jupyter:
		. $(VIRTUALENV)bin/activate; jupyter notebook


