ARG DEBIAN_RELEASE=buster
FROM debian:$DEBIAN_RELEASE

ENV ETOS_CONTEXT="ETR"
ENV ETR_PYTHON_VERSION=3.8.3

USER root

RUN apt-get update -y
RUN apt-get install -y build-essential libssl-dev zlib1g-dev libbz2-dev \
    libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
    xz-utils tk-dev libffi-dev liblzma-dev python-openssl git
RUN apt-get install -y python3 python3-dev python3-pip

RUN useradd -ms /bin/bash etos
USER etos
WORKDIR /home/etos

RUN echo "eval \"\$(pyenv init -)\"" >> /home/etos/.bashrc
RUN git clone https://github.com/pyenv/pyenv.git /home/etos/.pyenv

ENV PYENV_ROOT=/home/etos/.pyenv
ENV PATH="/home/etos/.pyenv/bin:${PATH}"
ENV TEST_ARTIFACT_PATH /home/etos/artifacts
ENV GLOBAL_ARTIFACT_PATH /home/etos/global
ENV TEST_LOCAL_PATH /home/etos/local

RUN pyenv install $ETR_PYTHON_VERSION
RUN pyenv global $ETR_PYTHON_VERSION

COPY executor.sh /home/etos/executor.sh
ENTRYPOINT /home/etos/executor.sh
