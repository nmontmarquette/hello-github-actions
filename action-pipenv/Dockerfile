ARG DOCKER_PYTHON_VERSION=3.8
FROM python:$DOCKER_PYTHON_VERSION

RUN apt-get update \
    && apt-get install -y pipenv \
    && python --version ; pip --version ; pipenv --version

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
