FROM gitpod/workspace-full:latest@sha256:ee2f624ca47c33e50c6de33023c37f945ad1304efa869e9410adcf3b2319eb1b

RUN bash -c 'VERSION="10.24.1" \
    && source $HOME/.nvm/nvm.sh && nvm install $VERSION \
    && nvm use $VERSION && nvm alias default $VERSION'

RUN echo "nvm use default &>/dev/null" >> ~/.bashrc.d/51-nvm-fix