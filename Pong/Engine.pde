class GameStateManager implements GameLoopObject
{
    private HashMap<GameState, GameObjectList> gameStates = new HashMap<GameState, GameObjectList>();

    public GameObjectList activeGameState;
    
    void update()
    {
        activeGameState.update();
    }
    
    void draw()
    {
        activeGameState.draw();
    }

    void reset()
    {
        activeGameState.reset();
    }

    void setActiveGameState(GameState gameState)
    {
        for (HashMap.Entry<GameState, GameObjectList> object : gameStates.entrySet()) 
        {
            if(object.getKey() == gameState)
            {
                activeGameState = object.getValue();
            }
        }
    }

    void addGameState(GameState gameState)
    {
        gameStates.put(gameState, new GameObjectList(gameState.name()));
    }

    void addGameState(GameState gameState, GameObjectList gameStateObject)
    {
        gameStates.put(gameState, gameStateObject);
    }
}