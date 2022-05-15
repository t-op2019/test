CC = g++
SRC_FILES = src/*.cpp src/objects/*.cpp src/utils/*.cpp
OBJ_NAME = game
INCLUDE_PATHS = -Iinclude -Iinclude/SDL2 -Iinclude/headers
LIBRARY_PATHS = -Llib

all:
	$(CC) $(INCLUDE_PATHS) $(LIBRARY_PATHS) -o game ${SRC_FILES} -lmingw32 -lSDL2main -lSDL2 -lSDL2_image -lSDL2_ttf -mwindows