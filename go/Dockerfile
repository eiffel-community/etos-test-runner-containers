ARG DEBIAN_RELEASE=buster
FROM registry.nordix.org/eiffel/etos-base-test-runner:$DEBIAN_RELEASE

ARG GO_VERSION
USER root
# hadolint ignore=DL4006
RUN wget -O - --progress=dot:giga "https://dl.google.com/go/go$GO_VERSION.linux-amd64.tar.gz" | \
    /bin/tar -C /usr/local -xzf -
USER etos

ENV PATH $PATH:/usr/local/go/bin
