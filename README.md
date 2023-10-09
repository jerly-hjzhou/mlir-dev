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
   -DLLVM_TARGETS_TO_BUILD="Native;NVPTX;AMDGPU" \
   -DCMAKE_BUILD_TYPE=Release \
   -DLLVM_ENABLE_ASSERTIONS=ON
* cmake --build .
* cmake --install .

