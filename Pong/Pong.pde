InputHandler inputHandler = new InputHandler();
GameStateManager gameStateManager = new GameStateManager();

enum GameState
{
    SINGLEPLAYER, SINGLEPLAYER_BOT, MULTIPLAYER, MENU_STATE
} 

void setup() {
    size(1920, 1080);
    frameRate(60);
}

void handleInput()
{
    inputHandler.update();
    gameStateManager.handleInput(inputHandler);
}

void update()
{
    gameStateManager.update();
}

void draw() {
    background(0f, 0f, 0f, 255f);

    update();
    gameStateManager.draw();
}
