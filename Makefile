SRC_DIR = src
BUILD_DIR = build
CC = g++
SRC_FILES = $(wildcard $(SRC_DIR)/*.cpp)
OBJ_NAME = game
INCLUDE_PATHS = -Iinclude -Iinclude/SDL2 -Iinclude/headers
LIBRARY_PATHS = -Llib
COMPILER_FLAGS = -std=c++11 -Wall -O0 -g
LINKER_FLAGS = -lSDL2

all:
	$(CC) $(INCLUDE_PATHS) $(LIBRARY_PATHS) -o game src/*.cpp src/objects/*.cpp src/utils/*.cpp -lmingw32 -lSDL2main -lSDL2 -lSDL2_image -lSDL2_ttf