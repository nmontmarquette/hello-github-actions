#!/bin/sh

# $* forwards all parameter supplied to the 'entreypoint.sh' script
sh -c "echo 'DEBUG: entrypoint.sh --- Entering'"
sh -c "echo 'DEBUG: entrypoint.sh --- All params (1): $*'"
sh -c "$*"
sh -c "echo 'DEBUG: entrypoint.sh --- Exiting'"

