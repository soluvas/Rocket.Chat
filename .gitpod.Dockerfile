FROM gitpod/workspace-full

# Install custom tools, runtimes, etc.
# For example "bastet", a command-line tetris clone:
# RUN brew install bastet
#
# More information: https://www.gitpod.io/docs/config-docker/

# Allow C++/V8 library linking with NodeJS / node-gyp / node-pre-gyp
RUN sudo apt-get update \
    && sudo apt-get install -y build-essential \
    && sudo rm -rf /var/lib/apt/lists/*

# https://medium.com/@fknipp/using-gitpod-io-for-your-meteor-project-cf8444b87421
USER gitpod
RUN curl https://install.meteor.com/ | sh
