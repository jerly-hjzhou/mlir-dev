# 搭建使用MLIR的环境
## 目的
独立编译mlir的toy example的toy7，其原本在编译mlir时一起编译出来，现在是把mlir和llvm的库安装后进行使用。
## 前置环境安装
编译此项目需要先安装MLIR。步骤如下：
* git clone https://github.com/llvm/llvm-project.git
* mkdir llvm-project/build
* cd llvm-project/build
* cmake -G Ninja ../llvm \
   -DLLVM_ENABLE_PROJECTS=mlir \
   -DLLVM_BUILD_EXAMPLES=ON \
   -DLLVM_TARGETS_TO_BUILD="Native" \
   -DCMAKE_BUILD_TYPE=Release \
   -DLLVM_ENABLE_ASSERTIONS=ON
* cmake --build .
* cmake --install .
然后按照以下命令编译此工程：
* mkdir build
* cd build
* cmake ..

### docker环境安装[可选]

如果需要使用docker，可以使用以下命令创建docker环境

> docker build -t mlir-demo:1.0 .

apt install 默认下载的cmake版本不满足大于3.20的要求，所以我们手动安装一下：
* wget https://github.com/Kitware/CMake/releases/download/v3.27.7/cmake-3.27.7.tar.gz
* tar -zxvf cmake-3.27.7.tar.gz
* cd cmake-3.27.7
* ./bootstrap
* make -j8
* make install