#!/bin/bash
set -e

mkdir -p build
cd build
git clone https://github.com/Microsoft/vcpkg.git vcpkg.linux
cd vcpkg.linux
# vcpkg 2022-02-16 12:35 UTC
git checkout 18e6e8855d2da137fada2387b6d137583c02b77c
./bootstrap-vcpkg.sh

./vcpkg install \
	boost-exception:x64-linux \
	boost-program-options:x64-linux \
	boost-stacktrace:x64-linux \
	freetype:x64-linux \
	glfw3:x64-linux \
	glm:x64-linux \
	imgui:x64-linux \
	stb:x64-linux \
	tinyobjloader:x64-linux
