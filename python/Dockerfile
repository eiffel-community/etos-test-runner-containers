ARG DEBIAN_RELEASE=trixie
FROM ghcr.io/eiffel-community/etos-base-test-runner:$DEBIAN_RELEASE

ARG PYTHON_VERSION
# Don't install if python version is already installed.
# hadolint ignore=DL4006
RUN if ! pyenv versions --bare | grep $PYTHON_VERSION ; then pyenv install $PYTHON_VERSION ; fi
