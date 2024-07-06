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

public useGameModeInit()
{
    return (true);
}

public usePlayerConnect(playerid)
{
    new player_name[20];

    GetPlayerName(playerid, player_name, 20);
    if (strcount(player_name, "_") != 1)
        Kick(playerid);
    return (PlayerConnecting(playerid));
}
