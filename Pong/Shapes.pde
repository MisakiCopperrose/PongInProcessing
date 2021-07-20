abstract class ShapeGameObject extends GameObject
{
    PVector position = new PVector(0, 0);
    PVector velocity = new PVector(0, 0);
    PVector acceleration = new PVector(0, 0);
    PVector center = new PVector(0, 0);

    color shapeColor = color(255, 255, 255);

    ShapeGameObject(String id)
    {
        super(id);
    }

    void move()
    {
        position.add(velocity);
    }

    void accelerate()
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
        fill(shapeColor);
    }

    @Override
    void reset()
    {
    }
}

class CircleGameObject extends ShapeGameObject
{
    float radius;

    CircleGameObject(String id)
    {
        super(id);
    }

    void draw()
    {
        super.draw();

        circle(position.x, position.y, radius);
    }
}

class RectangleGameObject extends ShapeGameObject
{
    float width, height;

    RectangleGameObject(String id)
    {
        super(id);
    }

    void draw()
    {
        super.draw();

        rect(position.x, position.y, width, height);
    }
}