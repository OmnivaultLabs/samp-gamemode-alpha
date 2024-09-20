/***
 *      _____ _   _  _____    _____ ____  _   _ _   _ ______ _______       __  __ 
 *     |_   _| \ | |/ ____|  / ____/ __ \| \ | | \ | |  ____|__   __|     |  \/  |
 *       | | |  \| | |      | |   | |  | |  \| |  \| | |__     | |        | \  / |
 *       | | | . ` | |      | |   | |  | | . ` | . ` |  __|    | |        | |\/| |
 *      _| |_| |\  | |____  | |___| |__| | |\  | |\  | |____   | |     _  | |  | |
 *     |_____|_| \_|\_____|  \_____\____/|_| \_|_| \_|______|  |_|    (_) |_|  |_|
 *                                                                                
 *                                                                                
 *  Desription: connect for database
 *  
*/

#if !defined __ADAPTER_MODULE_INC

	#define		MYSQL_HOST 			"localhost"
	#define		MYSQL_USER 			"root"
	#define		MYSQL_PASSWORD 		"persona_secret"
	#define		MYSQL_DATABASE 		"db_persona"

	// new	MySQL:ServerMySQL;

	#include "modules/database/mysql.pwn"

    #define __ADAPTER_MODULE_INC
#endif
