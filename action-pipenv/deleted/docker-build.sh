#!/bin/sh --login
#
# Called by Github Actions
# Expected to be executed from the parent folder of the 'action-pipenv' folder
#

PIPENV_PYTHON_VERSION=$1

if [ -z ${PIPENV_PYTHON_VERSION} ]; then
    echo "ERROR: A Pipenv Python version was not specified."
    exit 1
fi

TMP_DOCKER_IMAGE_ID_FILENAME=$(mktemp)
if [ -z ${TMP_DOCKER_IMAGE_ID_FILENAME} ]; then
    echo "ERROR: Temporary filename is empty."
    exit 1
fi

if ! docker build \
    --file ./action-pipenv/Dockerfile \
    --build-arg DOCKER_PYTHON_VERSION=${PIPENV_PYTHON_VERSION} \
    ./action-pipenv --iidfile ${TMP_DOCKER_IMAGE_ID_FILENAME}; then
    echo "ERROR: Docker build failure."
    exit 1
fi

if ! [ -f ${TMP_DOCKER_IMAGE_ID_FILENAME} ]; then
    echo "ERROR: The docker image ID file was not generated."
    exit 1
fi

# Extract the newly created Docker image ID
NEW_IMAGE_ID=$(cat ${TMP_DOCKER_IMAGE_ID_FILENAME} | egrep --only-matching "[-0-9a-f]{64}")

if [ -z ${NEW_IMAGE_ID} ]; then
    echo "ERROR: Couldn't find the image id."
    exit 1
fi

echo ${NEW_IMAGE_ID}
