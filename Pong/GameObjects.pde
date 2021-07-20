class Puck extends EllipseGameObject
{
    Puck()
    {
        super("puck");

        shapeWidth = width / 80;
        shapeHeight = shapeWidth;
        
        reset();
    }

    @Override
    void reset()
    {
        position = new PVector(width / 2, height / 2);
    }
}

class Padle extends RectangleGameObject
{
    Padle()
    {
        super("padle");

        shapeWidth = width / 60;
        shapeHeight = height / 4;

        velocity.y = 10;
    }

    void update()
    {
        super.update();

        if (position.y <= 0 || position.y >= height - shapeHeight)
        {
            velocity.y = -velocity.y;
        }
    }
}

class PlayerPadle extends Padle
{
    PlayerPadle()
    {
        id = "Player";
    }
}