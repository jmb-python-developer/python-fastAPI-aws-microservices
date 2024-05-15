[![Python FastAPI Based Service and DevOps](https://github.com/jmb-python-developer/python-fastAPI-aws-microservices/actions/workflows/devops.yml/badge.svg)](https://github.com/jmb-python-developer/python-fastAPI-aws-microservices/actions/workflows/devops.yml)
# Python FastAPI cloud based (AWS) Microservice

Microservice using FastAPI and Deployment in AWS Project, this project showcases, more than complex business logic, devops practices for Python Microservices modern cloud development.

## Broad Project Structure

The project aims to following a moder DevOps structure for a Python Project, which might not be mandatory but reflects modern python development practices for Microservices.

This will include the following files:

- `Makefile`
- `requirements.txt` -> Python Libraries Dependencies.
- The service source code -> Codebase, *.py files mostly.
- Test code -> Codebase that tests the application souce code.
- Dockerfile -> For dockerizing the service, that is, containerizing it.
- IaC files -> Infrastructure as code files, for provisining infra resources.
- CLI.py file, uses Fire library to test the app using a CLI. To run execute `./CLI.py --help`

## Scaffold 

1) Create Python Environment: `python3 -m venv ~/.venv` or `virtualenv ~/.venv`
2) For phrases functionality to work, the following package has to be installed (locally, included in makefile): `python -m textblob.download_corpora`

## Containerization

1) Image can be built using docker: `docker build -t wiki-fastapi .`
2) And run using docker command: `docker run `

## AWS Integration
- Makefile, deploy stage, contains the customisable commands to push the API image to AWS ECR.
- buildspeck.yml file contains the 'make all' directive that can be used with AWS CodeBuild, to also push into AWS ECR for all environments.
