# Python FastAPI cloud based (AWS) Microservice

Microservice using FastAPI and Deployment in AWS Project

## Broad Project Structure

The project aims to following a moder DevOps structure for a Python Project, which might not be mandatory but reflects modern python development practices for Microservices.

This will include the following files:

- `Makefile`
- `requirements.txt` -> Python Libraries Dependencies.
- The service source code -> Codebase, *.py files mostly.
- Test code -> Codebase that tests the application souce code.
- Dockerfile -> For dockerizing the service, that is, containerizing it.
- IaC files -> Infrastructure as code files, for provisining infra resources.

## Scaffold 

1) Create Python Environment: `python3 -m venv ~/.venv` or `virtualenv ~/.venv`