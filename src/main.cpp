#define SDL_MAIN_HANDLED
#include <iostream>
#include <SDL.h>
#include <background_functions.hpp>
#include <Entity.hpp>
#include <Ball.hpp>
#include <Hole.hpp>
#include <Tile.hpp>

using namespace std;

void playGame(int gameState, SDL_Event event);

bool isPlaying = true;

int main(int argc, const char **argv)
{
    const string windowTitle = "Dungeon Golf";
    int width = 800, height = 600;
    SDL_Window *window = NULL;
    SDL_Renderer *renderer = NULL;

    initSDL(window, renderer, windowTitle, width, height);

    int lvl = 0;
    int gameState = 1;

    bool wonGame = false;

    // set important global variables for functions in background_functions.cpp to use
    setVariables(window, renderer, windowTitle, width, height, lvl, gameState, &wonGame);
    SDL_Event event;
    loadAllTexture();
    init();
    while (SDL_PollEvent(&event) || isPlaying)
    {
        playGame(gameState, event);
    }

    unloadAllTexture();

    return 0;
}

void playGame(int gameState, SDL_Event event)
{
    if (gameState != 0)
    {
        update(isPlaying, event);
    }
}