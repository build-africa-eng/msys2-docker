FROM ghcr.io/msys2/msys2:base

Update system to avoid partial upgrades

RUN pacman -Syu --noconfirm

Install MINGW64 toolchain and common dev tools

RUN pacman -S --noconfirm 
mingw-w64-x86_64-toolchain 
mingw-w64-x86_64-cmake 
mingw-w64-x86_64-make 
mingw-w64-x86_64-python 
mingw-w64-x86_64-git 
zip unzip vim

Default command: bash shell in login mode

CMD ["/usr/bin/bash", "-l"]

