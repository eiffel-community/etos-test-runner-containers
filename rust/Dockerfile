ARG DEBIAN_RELEASE=buster
FROM registry.nordix.org/eiffel/etos-base-test-runner:$DEBIAN_RELEASE

ARG RUST_VERSION
RUN /usr/bin/curl https://sh.rustup.rs -sSf | sh -s -- -y --default-toolchain $RUST_VERSION

ENV PATH /home/etos/.cargo/bin:$PATH
