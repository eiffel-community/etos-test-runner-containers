#!/bin/bash
eval "$(pyenv init -)"

PIP_ARGS=${PIP_ARG:-""}

pyenv shell $ETR_PYTHON_VERSION

DEV=${DEV:-false}
if [ $DEV = "true" ] ; then
    ETR_BRANCH=${ETR_BRANCH:-master}
    ETR_INSTALL="git+https://github.com/eiffel-community/etos-test-runner.git@$ETR_BRANCH"
else
    ETR_INSTALL="etos_test_runner"
fi

pip install $PIP_ARGS $ETR_INSTALL

exec python -m etos_test_runner.etr "$@"
