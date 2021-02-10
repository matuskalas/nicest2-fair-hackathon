FROM gitpod/workspace-full

RUN sudo apt-get update \
    && sudo apt-get install -y \
        apt-utils snapd \
    && snap install --edge zola \
    && sudo rm -rf /var/lib/apt/lists/*

ENV HOME=/home/gitpod
WORKDIR $HOME
USER gitpod

