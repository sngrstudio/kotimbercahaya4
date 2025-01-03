FROM gitpod/workspace-full:latest@sha256:bec45ebdcc9b9c5ec28d5c61c16bf599200aa0d2dc1e69e2ed8ab0a424bae6db

RUN bash -c 'VERSION="10.24.1" \
    && source $HOME/.nvm/nvm.sh && nvm install $VERSION \
    && nvm use $VERSION && nvm alias default $VERSION'

RUN echo "nvm use default &>/dev/null" >> ~/.bashrc.d/51-nvm-fix