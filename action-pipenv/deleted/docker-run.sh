#!/bin/sh --login
#

NEW_IMAGE_ID=$1

if [ -z ${NEW_IMAGE_ID} ]; then
    echo "ERROR: An image ID was not specified."
    exit 1
fi

echo "DEBUG: All params (1): $*"

shift  # drop the image ID parameter

echo "DEBUG: All params (2): $*"
docker run \
    --interactive \
    --tty \
    --rm \
    ${NEW_IMAGE_ID} \
    "$*"
