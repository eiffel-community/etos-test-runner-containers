ARG DEBIAN_RELEASE=bookworm
FROM ghcr.io/eiffel-community/etos-base-test-runner:$DEBIAN_RELEASE

RUN apt update && apt  install -y curl
ARG RUST_VERSION
# hadolint ignore=DL4006
RUN /usr/bin/curl https://sh.rustup.rs -sSf | sh -s -- -y --default-toolchain $RUST_VERSION

ENV PATH /home/etos/.cargo/bin:$PATH
