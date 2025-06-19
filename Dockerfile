FROM stefanscherer/msys2:latest

# Fully update MSYS2—run twice for consistency
RUN pacman -Syuu --noconfirm && \
    pacman -Syuu --noconfirm

# Install MINGW64 toolchain and key development tools
RUN pacman -S --noconfirm \
    mingw-w64-x86_64-toolchain \
    mingw-w64-x86_64-cmake \
    mingw-w64-x86_64-make \
    mingw-w64-x86_64-python \
    mingw-w64-x86_64-git \
    zip unzip vim

# Start a login shell in MINGW64
CMD ["/usr/bin/bash", "-l"]
