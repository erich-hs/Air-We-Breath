install:
	pip install --upgrade pip &&\
		conda env create -f environment.yml
		conda update -n base -c defaults conda -y
		pip install -r requirements.txt

format:
	black *.ipynb
	black tshelpers/*.py

#lint:
#	pylint --disable=R,C app.py

# test:
#	#python -m pytest -vv test_flask_app.py

all: install format lint test
