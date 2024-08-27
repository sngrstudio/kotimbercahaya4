FROM gitpod/workspace-full:latest@sha256:279f925ad6395f11f6b60e63d7efa5c0b26a853c6052327efbe29bbcc0bafd6a

RUN bash -c 'VERSION="10.24.1" \
    && source $HOME/.nvm/nvm.sh && nvm install $VERSION \
    && nvm use $VERSION && nvm alias default $VERSION'

RUN echo "nvm use default &>/dev/null" >> ~/.bashrc.d/51-nvm-fix