class SinglePlayer extends GameObjectList
{
    Puck puck = new Puck();
    Padle richtPadle = new Padle();
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
        richtPadle.position = new PVector(width / 20 ,0);

        addObject(richtPadle);
    }

    private void setPlayerPadle()
    {
        player.position = new PVector(width - (width / 20) - player.shapeWidth, 0);

        addObject(player);
    }
}