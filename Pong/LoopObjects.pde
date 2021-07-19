interface GameLoopObject
{
    void handleInput(InputHandler inputHandler);
    
    void update();
    
    void draw();
}

abstract class GameObject implements GameLoopObject
{
    GameObject parent;
    
    PVector position;
    PVector velocity;
    
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
        for (GameLoopObject object : gameObjects) {
            object.handleInput(inputHandler);
        }
    }
    
    @Override
    void update()
    {
        for (GameLoopObject object : gameObjects) {
            object.update();
        }
    }
    
    @Override
    void draw()
    {  
        for (GameLoopObject object : gameObjects) {
            object.draw();
        }
    }
    
    void addObject(GameObject object)
    {
        object.parent = this;
        
        gameObjects.add(object);
    }
    
    void removeObject(GameObject object)
    {
        gameObjects.remove(object);
    }
}