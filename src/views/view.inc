/***
 *      _____ _   _  _____    _____ ____  _   _ _   _ ______ _______      __      __
 *     |_   _| \ | |/ ____|  / ____/ __ \| \ | | \ | |  ____|__   __|     \ \    / /
 *       | | |  \| | |      | |   | |  | |  \| |  \| | |__     | |         \ \  / / 
 *       | | | . ` | |      | |   | |  | | . ` | . ` |  __|    | |          \ \/ /  
 *      _| |_| |\  | |____  | |___| |__| | |\  | |\  | |____   | |     _     \  /   
 *     |_____|_| \_|\_____|  \_____\____/|_| \_|_| \_|______|  |_|    (_)     \/    
 *
 *                                                                  
 *  Desription: Connect Interactive ScriptFile
 *  
*/

#if !defined __ADAPTER_VIEW_INC

    #define COLOR_TEXT_SUCCESS 0x883
    #define COLOR_TEXT_WARNING 0x883
    #define COLOR_TEXT_ERROR 0x883

    forward useSSF();

    #include "views/server/presence.pwn"
    #include "views/dialogs/dialog.pwn"
    #define __ADAPTER_VIEW_INC
#endif
