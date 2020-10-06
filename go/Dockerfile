ARG DEBIAN_RELEASE=buster
FROM registry.nordix.org/eiffel-playground/etos-base-test-runner:$DEBIAN_RELEASE

ARG GO_VERSION
USER root
RUN wget "https://dl.google.com/go/go$GO_VERSION.linux-amd64.tar.gz"
RUN tar -C /usr/local -xzf "go$GO_VERSION.linux-amd64.tar.gz"
USER etos

ENV PATH $PATH:/usr/local/go/bin
