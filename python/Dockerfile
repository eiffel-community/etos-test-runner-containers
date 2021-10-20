ARG DEBIAN_RELEASE=buster
FROM registry.nordix.org/eiffel/etos-base-test-runner:$DEBIAN_RELEASE

ARG PYTHON_VERSION
# Don't install if python version is already installed.
# hadolint ignore=DL4006
RUN if ! pyenv versions --bare | grep $PYTHON_VERSION ; then pyenv install $PYTHON_VERSION ; fi
