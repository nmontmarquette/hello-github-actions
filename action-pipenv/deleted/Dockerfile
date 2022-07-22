ARG DOCKER_PYTHON_VERSION=3.9
FROM python:$DOCKER_PYTHON_VERSION

#
# Somehow, the 'apt-get' installed copy of 'pipenv' doesn't work for me
# trying out the 'pip-installed' version instead.
#RUN apt-get update \
#    && apt-get install -y pipenv \
#    && python --version ; pip --version ; pipenv --version

RUN apt-get update \
    && apt-get install -y python3-pip \
    && python -m pip install --upgrade pip \
    && python -m pip install pipenv \
    && python --version ; pip --version ; pipenv --version

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
