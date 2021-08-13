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

void draw() {
    background(0f);

    gameStateManager.update();
    gameStateManager.draw();
}
