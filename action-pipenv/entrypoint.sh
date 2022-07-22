#!/bin/sh

# $* forwards all parameter supplied to the 'entreypoint.sh' script
sh -c "echo 'DEBUG: entrypoint.sh --- Entering'"
sh -c "echo 'DEBUG: entrypoint.sh --- All params (1): $*'"

sh -c "apt-get update"

sh -c "apt-get install -y python3-pip"

sh -c "python -m pip install --upgrade pip"

sh -c "python -m pip install pipenv"

sh -c "python --version"
sh -c "pip --version"
sh -c "pipenv --version"


sh -c "$*"
sh -c "echo 'DEBUG: entrypoint.sh --- Exiting'"

