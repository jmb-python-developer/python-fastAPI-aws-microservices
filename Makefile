# This file is part of CI (Continuous Integration)
install:
	#Install commands Step
		pip install --upgrade pip &&\
			pip install -r requirements.txt
postinstall:
	#Install blob library needed from TextBlob Library
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
	#deploy Step - Needs to be adjusted for aws configuration as per user of this stage
	# aws ecr get-login-password --region ap-southeast-1 | docker login --username AWS --password-stdin 247695121650.dkr.ecr.ap-southeast-1.amazonaws.com
	# docker build -t wiki-fastapi .
	# docker tag wiki-fastapi:latest 247695121650.dkr.ecr.ap-southeast-1.amazonaws.com/wiki-fastapi:latest
	# docker push 247695121650.dkr.ecr.ap-southeast-1.amazonaws.com/wiki-fastapi:latest
all: install postinstall lint format test deploy


