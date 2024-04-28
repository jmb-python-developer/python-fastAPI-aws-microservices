# This file is part of CI (Continuous Integration)
install:
	#Install commands Step
		pip install --upgrade pip &&\
			pip install -r requirements.txt
lint:
	#check code syntax -flake8 or pylint- Step
format:
	#formatting Step
test:
	#tests Step
deploy:
	#deploy Step
all: install lint format test deploy


