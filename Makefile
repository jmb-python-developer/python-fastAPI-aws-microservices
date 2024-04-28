# This file is part of CI (Continuous Integration)
install:
	#Install commands Step
		pip install --upgrade pip &&\
			pip install -r requirements.txt
format:
	#formatting Step
	black *.py project_libs/*.py
lint:
	#check code syntax
test:
	#tests Step
deploy:
	#deploy Step
all: install lint format test deploy


