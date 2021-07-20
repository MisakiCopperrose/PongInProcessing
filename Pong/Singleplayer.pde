class SinglePlayer extends GameObjectList
{
    Puck puck = new Puck();
    Padle rightPadle = new Padle();
    PlayerPadle player = new PlayerPadle();

    SinglePlayer()
    {
        super(GameState.SINGLEPLAYER.name());

        addObject(puck);
        
        setLeftPadle();
        setPlayerPadle();
    }

    private void setLeftPadle()
    {
        rightPadle.position = new PVector(width / 20 ,0);

        addObject(rightPadle);
    }

    private void setPlayerPadle()
    {
        player.position = new PVector(width - (width / 20) - player.shapeWidth, 0);

        addObject(player);
    }
}