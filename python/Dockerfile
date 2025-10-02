ARG DEBIAN_RELEASE=bookworm
FROM ghcr.io/eiffel-community/etos-base-test-runner:$DEBIAN_RELEASE

ARG PYTHON_VERSION=3.13.7
# Don't install if python version is already installed.
# hadolint ignore=DL4006
RUN if ! pyenv versions --bare | grep $PYTHON_VERSION ; then pyenv install $PYTHON_VERSION ; fi
