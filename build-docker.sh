#/bin/bash

git submodule init
git submodule update --recursive

docker build -t lunatix/emscripten-ffmpeg .
docker run --rm -e REAL_USER="$(whoami):$(id -gn)" -v $(pwd):/src lunatix/emscripten-ffmpeg ./build.sh
