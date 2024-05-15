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
	docker build -t wiki-fastapi .
run:
	# Run docker image
	docker run -p 127.0.0.1:8080:8080 259c363ece48
deploy:
	#deploy Step
all: install lint format test deploy


