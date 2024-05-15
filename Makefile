# This file is part of CI (Continuous Integration)
install:
	#Install commands Step
		pip install --upgrade pip &&\
			pip install -r requirements.txt
		python -m textblob.download_corpora
format:
	#formatting Step
	black *.py project_libs/*.py
lint:
	#check code syntax
	pylint --disable=R,C --fail-under=9.5 *.py project_libs/*.py
test:
	#tests Step
	python -m pytest -vv --cov=project_libs --cov=main test_*.py
build:
	# Build (container) step

deploy:
	#deploy Step
all: install lint format test deploy


