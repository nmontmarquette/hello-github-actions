#!/bin/sh -l
#
# This script is invoked by Github Actions on the 'pre-entrypoint'
# Ref.: https://docs.github.com/en/actions/creating-actions/metadata-syntax-for-github-actions#runspre-entrypoint
#
# The Docker images we're expecting to run against is Debian based.
#
# TBD: Is this script executed from within or outside of the container?
apt-get update && apt-get install -v pipenv
