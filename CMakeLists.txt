cmake_minimum_required(VERSION 3.20.0)
project(Demo LANGUAGES CXX C)
set(CMAKE_CXX_STANDARD 17 CACHE STRING "C++ standard to conform to")
find_package(MLIR REQUIRED CONFIG)
message(STATUS "Using MLIRConfig.cmake in: ${MLIR_DIR}")
message(STATUS "Using LLVMConfig.cmake in: ${LLVM_DIR}")

# 设置编译出来的程序的保存位置
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)

# 不使用以下命令会有bug，具体参阅 https://discourse.llvm.org/t/undefined-reference-to-typeinfo-for-llvm-genericoptionvalue/71526
set(NO_RTTI "-fno-rtti")
add_definitions(${NO_RTTI})

# 导入Utils.cmake，不然不能直接include
list(INSERT CMAKE_MODULE_PATH 0
  "${CMAKE_CURRENT_SOURCE_DIR}/cmake/modules"
  )
include(Utils)

# MLIR和LLVM的头文件和库的安装路径
include_directories(/usr/local/include)
link_directories(/usr/local/lib)
add_subdirectory(Ch7)

