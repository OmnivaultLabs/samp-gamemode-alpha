/***
 *      __  __          _____ _   _   ______ _____ _      ______
 *     |  \/  |   /\   |_   _| \ | | |  ____|_   _| |    |  ____|
 *     | \  / |  /  \    | | |  \| | | |__    | | | |    | |__
 *     | |\/| | / /\ \   | | | . ` | |  __|   | | | |    |  __|
 *     | |  | |/ ____ \ _| |_| |\  | | |     _| |_| |____| |____
 *     |_|  |_/_/    \_\_____|_| \_| |_|    |_____|______|______|
 *
 *  Create by Aaron_Glassman (IC) uphokaew (OOC)
 *  Discord: beok159
 *  Github: https://github.com/uphokaew
 *
 *  Project: Experimental Project!, Gamemode Roleplay. for RP Classic Community
 *  Desription: connect all file to Appication.pwn for start point for compile on MVC Architecture.
*/

#include <adapter.inc>

#if defined FILTERSCRIPT

public OnFilterScriptInit()
{
    return (true);
}

public OnFilterScriptExit()
{
    return (true);
}

#else

main()
{
    new File:handle = fopen("test.txt", io_read);
    new	buf[128];

    if (handle)
    {
        while (fread(handle, buf)) print(buf);
        fclose(handle);
    }
    else
        print("The file \"file.txt\" does not exists, or can't be opened.");
}

#endif

public OnGameModeInit()
{
    DisableInteriorEnterExits();
    SetGameModeText("Experimental Project!");
    return (GameModeInit());
}

public OnGameModeExit()
{
    return (true);
}

public OnPlayerConnect(playerid)
{
    return (PlayerConnect(playerid));
}

public OnPlayerDisconnect(playerid, reason)
{
    return (true);
}

public OnPlayerRequestClass(playerid, classid)
{
    return (true);
}

public OnPlayerSpawn(playerid)
{
    return (true);
}

public OnPlayerDeath(playerid, killerid, reason)
{
    return (true);
}

public OnVehicleSpawn(vehicleid)
{
    return (true);
}

public OnVehicleDeath(vehicleid, killerid)
{
    return (true);
}

public OnPlayerText(playerid, text[])
{
    return (true);
}

public OnPlayerCommandText(playerid, cmdtext[])
{
    return 0;
}

public OnPlayerEnterVehicle(playerid, vehicleid, ispassenger)
{
    return (true);
}

public OnPlayerExitVehicle(playerid, vehicleid)
{
    return (true);
}

public OnPlayerStateChange(playerid, newstate, oldstate)
{
    return (true);
}

public OnPlayerEnterCheckpoint(playerid)
{
    return (true);
}

public OnPlayerLeaveCheckpoint(playerid)
{
    return (true);
}

public OnPlayerEnterRaceCheckpoint(playerid)
{
    return (true);
}

public OnPlayerLeaveRaceCheckpoint(playerid)
{
    return (true);
}

public OnRconCommand(cmd[])
{
    return (true);
}

public OnPlayerRequestSpawn(playerid)
{
    return (true);
}

public OnObjectMoved(objectid)
{
    return (true);
}

public OnPlayerObjectMoved(playerid, objectid)
{
    return (true);
}

public OnPlayerPickUpPickup(playerid, pickupid)
{
    return (true);
}

public OnVehicleMod(playerid, vehicleid, componentid)
{
    return (true);
}

public OnVehiclePaintjob(playerid, vehicleid, paintjobid)
{
    return (true);
}

public OnVehicleRespray(playerid, vehicleid, color1, color2)
{
    return (true);
}

public OnPlayerSelectedMenuRow(playerid, row)
{
    return (true);
}

public OnPlayerExitedMenu(playerid)
{
    return (true);
}

public OnPlayerInteriorChange(playerid, newinteriorid, oldinteriorid)
{
    return (true);
}

public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
    return (true);
}

public OnRconLoginAttempt(ip[], password[], success)
{
    return (true);
}

public OnPlayerUpdate(playerid)
{
    return (true);
}

public OnPlayerStreamIn(playerid, forplayerid)
{
    return (true);
}

public OnPlayerStreamOut(playerid, forplayerid)
{
    return (true);
}

public OnVehicleStreamIn(vehicleid, forplayerid)
{
    return (true);
}

public OnVehicleStreamOut(vehicleid, forplayerid)
{
    return (true);
}

public OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
    return (true);
}

public OnPlayerClickPlayer(playerid, clickedplayerid, source)
{
    return (true);
}
