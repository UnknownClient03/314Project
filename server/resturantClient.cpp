#include "client.h"


void formatsLogin(CustomClient *c)
{
	char email[INPUT_SIZE];
	char password[INPUT_SIZE];

	std::cout << "RESTURANT LOGIN:\n";
	std::cout << "email: ";
	fgets(email, INPUT_SIZE, stdin);
	std::cout << "password: ";
	fgets(password, INPUT_SIZE, stdin);
	c->sendLogin(email, password);
}

void formatsHome(CustomClient* c)
{
    wprintf(L"COMMAND>");
	char input[INPUT_SIZE];
    fgets(input, INPUT_SIZE, stdin);

    if (compare(input, "help\n", 0, 4))
    {
        wprintf(L"LIST OF COMMANDS\n");
        wprintf(L"  type 'exit' to exit.\n");
        wprintf(L"  type 'help' to get list of commands.\n");
        wprintf(L"  type 'show' to get list of all order.\n");
        wprintf(L"    type 'show [order number]' to get order detials.\n");
        wprintf(L"    type 'show processed' to get list of all processed order not yet submitted.\n");
        wprintf(L"    type 'show cooking' to get list of orders currently cooking.\n");
        wprintf(L"    type 'show completed' to get list of completed orders ready to be picked up.\n");
        wprintf(L"    type 'show canceled' to get list of canceled/refunded orders.\n");
        wprintf(L"    type 'show contact [order number]' to get address and contact of oder customer.\n");
        wprintf(L"  type 'update [order number] AT [arrivalTime]' to update arrival time(mins).\n");
        wprintf(L"  type 'accept [order number]' to accept order.\n");
        wprintf(L"  type 'reject [order number]' to reject order and will be refunded to the customer.\n");
        wprintf(L"  type 'complete [order number]' to complete order ready for the courier to pick it up.\n");
        wprintf(L"\n");
    }
    else if (compare(input, "exit\n", 0, 4))
        exit(0);
    else if (compare(input, "show", 0, 3))
    {
        if (compare(input, "\n", 4, 4))
        {
            wprintf(L"Displaying all orders...\n\n");
            c->sendDisplayOrder("SELECT ID, * FROM ORDER_ WHERE ResturantID = ?;", 47);
        }
        else if (compare(input, " processed\n", 4, 14))
        {
            wprintf(L"Displaying processed orders...\n\n");
            c->sendDisplayOrder("SELECT ID, * FROM ORDER_ WHERE ResturantID = ? AND status = 'processed';", 72);
        }
        else if (compare(input, " cooking\n", 4, 12))
        {
            wprintf(L"Displaying cooking orders...\n\n");
            c->sendDisplayOrder("SELECT ID, * FROM ORDER_ WHERE ResturantID = ? AND status = 'cooking';", 70);
        }
        else if (compare(input, " completed\n", 4, 14))
        {
            wprintf(L"Displaying completed orders...\n\n");
            c->sendDisplayOrder("SELECT ID, * FROM ORDER_ WHERE ResturantID = ? AND status = 'completed';", 72);
        }
        else if (compare(input, " canceled\n", 4, 13))
        {
            wprintf(L"Displaying canceled orders...\n\n");
            c->sendDisplayOrder("SELECT ID, * FROM ORDER_ WHERE ResturantID = ? AND status = 'canceled';", 71);
        }
        else if (compare(input, " contact ", 4, 12))
        {
            int ID = convertToInt(&input[13]);
            wprintf(L"Displaying contact for order number: %i...\n\n", ID);
            c->sendDisplayOrderContact("SELECT * FROM Customer INNER JOIN CAddress ON ID = customerID WHERE ID = any(SELECT customerID FROM ORDER_ WHERE ResturantID = ? AND ID = ?);", 140, ID);
        }
        else if (compare(input, " ", 4, 4))
        {
            int ID = convertToInt(&input[5]);
            int i;
            for (i = 5; input[i] != '\n'; i++) {}
            std::cout << ID << std::endl;
            if (input[i] == '\n' && ID < 1000)
            {
                wprintf(L"Displaying order number: %i...\n\n", ID);
                c->sendDisplayOrder("SELECT ID, * FROM ORDER_ WHERE ResturantID = ? AND ID = ?;", 58, ID);
            }
            else
            {
                wprintf(L"Unknown command\n");
                formatsHome(c);
            }
        }
        else
        {
            wprintf(L"Unknown command\n");
            formatsHome(c);
        }
        return;
    }
    else if (compare(input, "update ", 0, 6))
    {
        int ID = convertToInt(&input[7]);
        int i;
        for (i = 7; input[i] != ' '; i++) {}
        if (compare(input, " AT ", i, i + 3))
        {
            int AT = convertToInt(&input[i + 4]);
            c->sendUpdateArrivalTime("UPDATE Order_ SET arrivalTime = ? WHERE ID = ? AND ResturantID = ? AND (status = 'processed' OR status = 'cooking');", 120, ID, AT);
            return;
        }
        else wprintf(L"Unknown command\n");
    }
    else if (compare(input, "accept ", 0, 6))
    {
        int ID = convertToInt(&input[7]);
        c->sendChangeStatus("UPDATE Order_ SET status = 'cooking' WHERE ID = ? AND ResturantID = ? AND dbo.checkStatus(status, 'cooking') IS NOT NULL;", 70+51, ID);
        return;
    }
    else if (compare(input, "reject ", 0, 6))
    {
        int ID = convertToInt(&input[7]);
        c->sendChangeStatus("UPDATE Order_ SET status = 'canceled' WHERE ID = ? AND ResturantID = ? AND dbo.checkStatus(status, 'canceled') IS NOT NULL;", 71+52, ID);
        return;
    }
    else if (compare(input, "complete ", 0, 8))
    {
        int ID = convertToInt(&input[9]);
        c->sendChangeStatus("UPDATE Order_ SET status = 'completed' WHERE ID = ? AND ResturantID = ? AND dbo.checkStatus(status, 'completed') IS NOT NULL;", 72+53, ID);
        c->sendFinishedOrder(ID);
        return;
    }
    else
        wprintf(L"Unknown command\n");
    formatsHome(c);
}

int main()
{
	CustomClient c;
	c.Connect("10.12.131.181", 60000);  //private network
    //c.Connect("127.0.0.1", 60000);    //localhost


	bool bQuit = false;
	while (!bQuit)
	{
		if (c.IsConnected())
		{
			if (!c.Incoming().empty())
			{
				auto msg = c.Incoming().pop_front().msg;

				switch (msg.header.id)
				{
				case CustomMsgTypes::ServerAccept:
				{			
					std::cout << "Connected To server\n";
					formatsLogin(&c);
				}
				break;

				case CustomMsgTypes::ClientMessage_FailLogIn:
				{
					std::cout << msg.body.data() << std::endl;
					formatsLogin(&c);
				}
				break;

				case CustomMsgTypes::ClientMessage_SuccLogIn:
				{
					std::cout << msg.body.data() << std::endl;
				}
				break;
                case CustomMsgTypes::displayContactRResult:
                {
                    contact conn(msg);
                    conn.print();
                    wprintf(L"ENTER COMMANDS\n");
                    wprintf(L"  type 'exit' to exit.\n");
                    wprintf(L"  type 'help' to get list of commands.\n\n");
                    formatsHome(&c);
                }
                break;

                case CustomMsgTypes::ClientMessage:
                {
                    iis str(msg);
                    printf(str.cond, str.id);
                    formatsHome(&c);
                }
                break;
                case CustomMsgTypes::displayContactOResult:
                {
                    contact conn(msg);
                    conn.print();
                    formatsHome(&c);
                }
                break;
                case CustomMsgTypes::displayOrderResult:
                {

                    order order(msg);
                    order.print();

                    formatsHome(&c);
                }
                break;
                case CustomMsgTypes::displayOrderDetailResult:
                {
                    orderDetail OD(msg);
                    OD.print();
                }
                break;
                }
			}
		}
		else
		{
			std::cout << "Server Down\n";
			bQuit = true;
		}
	}

	return 0;
}