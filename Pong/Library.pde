class InputHandler
{
    void update()
    {

    }
}

class GameStateManager implements GameLoopObject
{
    private HashMap<GameState, GameObjectList> gameStates = new HashMap<GameState, GameObjectList>();

    void handleInput(InputHandler inputHandler)
    {
        for (HashMap.Entry<GameState, GameObjectList> object : gameStates.entrySet()) {
            object.getValue().handleInput(inputHandler);
        }
    }
    
    void update()
    {
        for (HashMap.Entry<GameState, GameObjectList> object : gameStates.entrySet()) {
            object.getValue().update();
        }
    }
    
    void draw()
    {
        for (HashMap.Entry<GameState, GameObjectList> object : gameStates.entrySet()) {
            object.getValue().draw();
        }
    }

    void addGameState(GameState gameState)
    {
        gameStates.put(gameState, new GameObjectList(gameState.name()));
    }
}