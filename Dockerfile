FROM ubuntu:20.04
RUN apt-get update && apt-get install -y vim
RUN apt-get install -y ninja-build
RUN apt-get install -y git
RUN apt-get install -y ccache lld clang
RUN apt-get install -y zlib1g-dev
RUN apt-get install -y python-is-python3
# RUN git clone https://github.com/llvm/llvm-project.git
