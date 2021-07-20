abstract class ShapeGameObject extends GameObject
{
    PVector position = new PVector(0, 0);
    PVector velocity = new PVector(0, 0);
    PVector acceleration = new PVector(0, 0);
    PVector center = new PVector(0, 0);
    
    color shapeColor = color(255f);
    
    float shapeWidth, shapeHeight;
    
    boolean centered = false;
    
    ShapeGameObject(String id)
    {
        super(id);
    }
    
    final void move()
    {
        position.add(velocity);
    }
    
    final void accelerate()
    {
        velocity.add(acceleration);
    }
    
    @Override
    void handleInput(InputHandler inputHandler)
    {
    }
    
    @Override
    void update()
    {
        accelerate();
        move();
    }
    
    @Override
    void draw()
    {
        if (centered)
        {
            rectMode(CENTER);
            ellipseMode(CENTER);
        } else {
            rectMode(CORNER);
            ellipseMode(RADIUS);
        }
        
        fill(shapeColor);
    }
}

class EllipseGameObject extends ShapeGameObject
{
    EllipseGameObject(String id)
    {
        super(id);
    }
    
    void update()
    {
        super.update();
        
        setCenter();
    }
    
    void draw()
    {
        super.draw();
        
        ellipse(position.x, position.y, shapeWidth, shapeHeight);
    }
    
    final void setCenter()
    {
        if (centered)
        {
            center = new PVector(shapeWidth / 2, shapeHeight / 2);
        } else {
            center = new PVector(shapeWidth, shapeHeight);
        }
    }
    
    void reset()
    {
    }
}

class RectangleGameObject extends ShapeGameObject
{
    RectangleGameObject(String id)
    {
        super(id);
    }
    
    void update()
    {
        super.update();
        
        setCenter();
    }
    
    void draw()
    {
        super.draw();
        
        rect(position.x, position.y, shapeWidth, shapeHeight);
    }
    
    final void setCenter()
    {
        center = new PVector(shapeWidth / 2, shapeHeight / 2);
    }
    
    void reset()
    {
    }
}