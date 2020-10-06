ARG DEBIAN_RELEASE=buster
FROM registry.nordix.org/eiffel-playground/etos-base-test-runner:$DEBIAN_RELEASE

ARG PYTHON_VERSION
# Don't install if python version is already installed.
RUN if ! pyenv versions --bare | grep $PYTHON_VERSION ; then pyenv install $PYTHON_VERSION ; fi
