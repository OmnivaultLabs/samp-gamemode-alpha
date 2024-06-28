/***
 *      _____ _   _  _____    _____ ____  _   _ _   _ ______ _______ 
 *     |_   _| \ | |/ ____|  / ____/ __ \| \ | | \ | |  ____|__   __|
 *       | | |  \| | |      | |   | |  | |  \| |  \| | |__     | |   
 *       | | | . ` | |      | |   | |  | | . ` | . ` |  __|    | |   
 *      _| |_| |\  | |____  | |___| |__| | |\  | |\  | |____   | |   
 *     |_____|_| \_|\_____|  \_____\____/|_| \_|_| \_|______|  |_|   
 *                                                                   
 *                                                                   
 *  Desription: connect all file to Appication.pwn for start point for compile on MVC Architecture.
    Structure nomal case
        - module      (M)
        - view        (V)
        - controllers (C)
    Controller use callback all function in view and module but not invert.
*/ 

#if !defined __ADAPTER_INC
    #include <a_samp>
    #include <strlib>

    // DECLEARTION FUNCTION CALLBACK TO GLOBAL
    // USE MODULE AND CONTROLLER FUNCTION TO VIEW OR USE CONTROLLER AND VIEW TO MODULE

    // CONTROLLER
    #include <controllers/export>

    // VIEW
    #include <views/export>

    // MODULE
    #include <modules/export>

    // DIR FOR MODULES
    #include <modules/module>

    // DIR FOR VIEW
    #include <views/view>

    // DIR FOR CONTROLLERS
    #include <controllers/controller>

    #define __ADAPTER_INC
#endif
