#!/bin/bash

# Append following code under .bashrc
#
#   alias php5='/home/takeuchi/commands/php.sh 5.6'
#   alias php7='/home/takeuchi/commands/php.sh 7.4'
#
# Apply settings
#
#   $ source .bashrc
#
# Usage:
#
#   $ php5 hoge.php
#   $ php7 hoge.php

set -eu

docker run -it --rm --name my-running-script -v "$PWD":/usr/src/myapp -w /usr/src/myapp php:${1}-cli php $2

