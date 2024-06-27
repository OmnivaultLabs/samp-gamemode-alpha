/***
 *      _____ _   _  _____    _____ ____  _   _ _   _ ______ _______        _____ 
 *     |_   _| \ | |/ ____|  / ____/ __ \| \ | | \ | |  ____|__   __|      / ____|
 *       | | |  \| | |      | |   | |  | |  \| |  \| | |__     | |        | |     
 *       | | | . ` | |      | |   | |  | | . ` | . ` |  __|    | |        | |     
 *      _| |_| |\  | |____  | |___| |__| | |\  | |\  | |____   | |     _  | |____ 
 *     |_____|_| \_|\_____|  \_____\____/|_| \_|_| \_|______|  |_|    (_)  \_____|
 *                                                                                
 *                                                                                
 *  Desription: connect for controller from module or view to adapter file.
 *  
*/

#if !defined __ADAPTER_CONTROLLER_INC
    forward OnServerStart();

    #include "controllers/server.pwn"
    #define __ADAPTER_CONTROLLER_INC
#endif
