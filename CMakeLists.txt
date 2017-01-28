cmake_minimum_required(VERSION 2.8.7)
project (kom)

include_directories(include)
include_directories(libc/include)

ENABLE_LANGUAGE(ASM)

set(CMAKE_C_COMPILER gcc)
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -std=gnu99 -Os -nostdlib -m32 -march=i386 -ffreestanding")

set(CMAKE_ASM_COMPILE_OBJECT "nasm -felf32 -o <OBJECT> <SOURCE>")

set(CMAKE_C_LINK_EXECUTABLE "gcc -T ${CMAKE_SOURCE_DIR}/linker.ld -o <TARGET> -std=gnu99 -Os -nostdlib -m32 -march=i386 -ffreestanding -Os -nostdlib <OBJECTS>")

file(GLOB SRC	"src/*.c")
file(GLOB LIBC	"libc/*")

add_executable(out.kom ${SRC} ${LIBC})
