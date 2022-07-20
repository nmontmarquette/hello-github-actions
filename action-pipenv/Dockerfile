ARG PYTHON_VERSION=3.8
FROM python:$PYTHON_VERSION

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
