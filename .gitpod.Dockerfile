FROM gitpod/workspace-full

RUN sudo apt-get update \
    && sudo apt-get install -y \
        apt-utils wget tar \
    && sudo wget https://github.com/getzola/zola/releases/download/v0.13.0/zola-v0.13.0-x86_64-unknown-linux-gnu.tar.gz --no-check-certificate \
    && sudo tar zxvf zola-v0.13.0-x86_64-unknown-linux-gnu.tar.gz --directory /usr/local/bin \
    && sudo rm -rf /var/lib/apt/lists/*

ENV HOME=/home/gitpod
WORKDIR $HOME
USER gitpod

