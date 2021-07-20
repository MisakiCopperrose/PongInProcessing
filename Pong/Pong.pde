InputHandler inputHandler = new InputHandler();
GameStateManager gameStateManager = new GameStateManager();

enum GameState
{
    SINGLEPLAYER, SINGLEPLAYER_BOT, LOCAL_MULTIPLAYER, MENU_STATE
} 

void setup() 
{
    size(1920, 1080);
    frameRate(60);
    
    gameStateManager.addGameState(GameState.SINGLEPLAYER, new SinglePlayer());
    gameStateManager.addGameState(GameState.SINGLEPLAYER_BOT, new SinglePlayerBot());
    
    gameStateManager.setActiveGameState(GameState.SINGLEPLAYER);
}

void handleInput()
{
    inputHandler.update();

    gameStateManager.handleInput(inputHandler);
}

void update()
{
    handleInput();
    
    gameStateManager.update();
}

void draw() {
    background(0f);
    update();

    gameStateManager.draw();
}
