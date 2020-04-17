#!/bin/bash

# Append following code under .bashrc
#
#   alias composer='/path/composer.sh'
#
# Apply settings
#
#   $ source .bashrc
#
# Usage:
#
#   $ composer init
#   $ composer install
#   $ composer update

set -eu

docker run --rm --interactive --tty --volume $PWD:/app composer 

