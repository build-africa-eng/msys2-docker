FROM ghcr.io/msys2/msys2-docker-experimental

# Update MSYS2 packages
RUN pacman -Syu --noconfirm

# Install dev tools
RUN pacman -S --noconfirm \
    mingw-w64-x86_64-toolchain \
    mingw-w64-x86_64-cmake \
    mingw-w64-x86_64-make \
    mingw-w64-x86_64-python \
    mingw-w64-x86_64-git \
    zip unzip vim

# Set bash as default shell
CMD ["/usr/bin/bash", "-l"]
