FROM trzeci/emscripten

RUN apt-get -qq -y update && apt-get -qq install -y --no-install-recommends \
    python git automake libtool build-essential cmake libglib2.0-dev closure-compiler wget 

RUN apt-get install -y --no-install-recommends \
    libc6-dev
