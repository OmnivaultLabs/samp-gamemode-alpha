/***
 *      _______          ___   _    ______ _____ _      ______
 *     |  __ \ \        / / \ | |  |  ____|_   _| |    |  ____|
 *     | |__) \ \  /\  / /|  \| |  | |__    | | | |    | |__
 *     |  ___/ \ \/  \/ / | . ` |  |  __|   | | | |    |  __|
 *     | |      \  /\  /  | |\  |  | |     _| |_| |____| |____
 *     |_|       \/  \/   |_| \_|  |_|    |_____|______|______|
 *
 *
 *  Desription: 
*/

public useStartSF()
{
    DisableInteriorEnterExits();
    SetGameModeText("Experimental Project!");
    return (true);
}

public usePlayerConnect(playerid)
{
    return (PlayerConnecting(playerid));
}
