#!/bin/bash

CURR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
DIR="$(dirname "$CURR")"

echo "Make venv"
virtualenv -p ${DIR}/.localpython/bin/python  $DIR/venv

# Enter in to virtual environment
source $DIR/venv/bin/activate

# Install dependencies into virtual environment
pip install shade ansible
