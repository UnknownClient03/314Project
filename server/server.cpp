#include "server.h"


int main(int argc, char** argv)
{

	CustomServer server(60000); 
	server.Start();

	if (!server.DBconnect(argc, argv)) wprintf(L"Cannot Connect to database\n");
	else if (!server.DBuseResturnt()) wprintf(L"Cannot Connect to resturant\n");
	else  wprintf(L"Connected to database\n");

	while (1)
	{
		server.Update(-1, true);
	}
	
	system("pause");

	return 0;
}