[![CircleCI](https://circleci.com/gh/ilreddo/udacity-kubernetes.svg?style=svg)](https://circleci.com/gh/ilreddo/udacity-kubernetes)

## Project Overview

In this project, I operationalised a Machine Learning Microservice API. 

The Machine Learning API is based on a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. I operationalised the Python flask app—in that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

* Operationalise the machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications.
* Test the project code using linting
* Complete a Dockerfile to containerize this application
* Deploy the containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload the code on Github with CircleCI integration to indicate that the code has been tested

---

## Setup the Environment

* Create a virtualenv and activate: 
```
python3 -m venv ~/.devops
source ~/.devops/bin/activate
```
* Run `make install` to install the necessary dependencies

### Running the ML app

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`