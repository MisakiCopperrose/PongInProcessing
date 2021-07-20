interface GameLoopObject
{
    void handleInput(InputHandler inputHandler);
    
    void update();
    
    void draw();

    void reset();
}

abstract class GameObject implements GameLoopObject
{
    GameObject parent;
    
    String id;
    
    GameObject(String id)
    {
        this.id = id;
    }
    
    @Override
    abstract void handleInput(InputHandler inputHandler);
    
    @Override
    abstract void update();
    
    @Override
    abstract void draw();

    @Override
    abstract void reset();
}

class GameObjectList extends GameObject
{
    private ArrayList<GameLoopObject> gameObjects = new ArrayList<GameLoopObject>();
    
    GameObjectList(String id)
    {
        super(id);
    }
    
    @Override
    void handleInput(InputHandler inputHandler)
    {
        for (GameLoopObject object : gameObjects) 
        {
            object.handleInput(inputHandler);
        }
    }
    
    @Override
    void update()
    {
        for (GameLoopObject object : gameObjects) 
        {
            object.update();
        }
    }
    
    @Override
    void draw()
    {  
        for (GameLoopObject object : gameObjects) 
        {
            object.draw();
        }
    }

    @Override
    void reset()
    {
        for (GameLoopObject object : gameObjects) 
        {
            object.reset();
        }
    }
    
    final void addObject(GameObject object)
    {
        object.parent = this;
        
        gameObjects.add(object);
    }
    
    final void removeObject(GameObject object)
    {
        gameObjects.remove(object);
    }
}