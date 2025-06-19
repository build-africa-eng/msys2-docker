🐧 MSYS2 Docker Image with MINGW64

A portable MSYS2 development environment with the full MINGW64 toolchain, built as a Docker image.

> Repository: build-africa-eng/msys2-docker



✅ Features

Based on ghcr.io/msys2/msys2:base

Preinstalled MINGW64 toolchain

Includes common build tools: cmake, make, python, git, vim

Works on Linux, macOS, and Windows (via Docker)

Perfect for CI pipelines and cross-platform builds



---

📦 Installed Packages

mingw-w64-x86_64-toolchain

mingw-w64-x86_64-cmake

mingw-w64-x86_64-make

mingw-w64-x86_64-python

mingw-w64-x86_64-git

zip, unzip, vim



---

🚀 Usage

Pull the image

docker pull africanfuture/msys2:latest

Run interactively

docker run -it africanfuture/msys2

Mount your working directory

docker run -it -v $PWD:/work -w /work africanfuture/msys2


---

🔄 Rebuild Locally

Clone this repo and build the image:

git clone https://github.com/build-africa-eng/msys2-docker.git
cd msys2-docker
docker build -t africanfuture/msys2 .


---

⚙️ CI/CD (GitHub Actions)

This project uses GitHub Actions to automatically build and publish the Docker image to Docker Hub whenever code is pushed to main.


---

📜 License

This project is open-source and available under the MIT License.

