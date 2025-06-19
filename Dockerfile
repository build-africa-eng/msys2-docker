FROM msys2/msys2:latest

# System update (run twice for full sync)
RUN pacman -Syu --noconfirm && \
    pacman -Syu --noconfirm

# Install MINGW64 toolchain and essential packages
RUN pacman -S --noconfirm \
    mingw-w64-x86_64-toolchain \
    mingw-w64-x86_64-make \
    mingw-w64-x86_64-cmake \
    mingw-w64-x86_64-python \
    mingw-w64-x86_64-git \
    zip unzip vim

# Default to MINGW64 environment
CMD ["/usr/bin/bash", "-l"]
