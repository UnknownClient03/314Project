#include "client.h"

static int ID = -1;
static int port = 60000;
static const char address[] = "127.0.0.1";


void formatsOrderContition(CustomClient* c)
{
    wprintf(L"COMMAND>");
    char input[INPUT_SIZE];
    fgets(input, INPUT_SIZE, stdin);
    if (compare(input, "help\n", 0, 4))
    {
        wprintf(L"LIST OF COMMANDS\n");
        wprintf(L"  type 'exit' to exit.\n");
        wprintf(L"  type 'help' to get list of commands.\n");
        wprintf(L"  type 'show' to get order Details.\n");
        wprintf(L"    type 'show resturant' to get address and contact of customer.\n");
        wprintf(L"    type 'show customer' to get address and contact of resturant.\n");
        wprintf(L"  type 'update ArrivalTime [arrivalTime]' to update arrival time(mins).\n");
        wprintf(L"  type 'collected' to accept order.\n");
        wprintf(L"  type 'completed' to accept order.\n");
        wprintf(L"\n");
    }
    else if (compare(input, "exit\n", 0, 4))
    {
        c->remove(ID);
        return;
    }
        
    else if (compare(input, "show", 0, 3))
    {
        if (compare(input, "\n", 4, 4))
        {
            wprintf(L"Displaying all orders...\n\n");
            c->sendDisplayOrder("SELECT ID, * FROM ORDER_ WHERE ResturantID = ? AND ID = ?;", 58, ID);
        }
        else if (compare(input, " resturant\n", 4, 14))
        {
            printf("Displaying contact Infomation for resturant...\n");
            c->sendDisplayResturantContact("SELECT * FROM Resturant INNER JOIN Contact ON ID = Contact.ResturantID INNER JOIN RAddress ON ID = RAddress.ResturantID WHERE ID = ?;", 133);
        }
        else if (compare(input, " customer\n", 4, 13))
        {
            printf("Displaying contact Infomation for customer...\n");
            c->sendDisplayOrderContact("SELECT * FROM Customer INNER JOIN CAddress ON ID = customerID WHERE ID = any(SELECT customerID FROM ORDER_ WHERE ResturantID = ? AND ID = ?);", 140, ID);
        }
        else
        {
            wprintf(L"Unknown command\n");
            formatsOrderContition(c);
        }
        return;
    }
    else if (compare(input, "update ArrivalTime ", 0, 18))
    {
        int AT = convertToInt(&input[19]);
        c->sendUpdateArrivalTime("UPDATE Order_ SET arrivalTime = ? WHERE ID = ? AND ResturantID = ? AND (status = 'completed' OR status = 'dispatched');", 123, ID, AT);
        return;
    }
    else if (compare(input, "collected\n", 0, 9))
    {
        c->sendChangeStatus("UPDATE Order_ SET status = 'dispatched' WHERE ID = ? AND ResturantID = ? AND dbo.checkStatus(status, 'dispatched') IS NOT NULL;", 73+54, ID);
        return;
    }
    else if (compare(input, "completed\n", 0, 9))
    {
        c->sendChangeStatus("UPDATE Order_ SET status = 'arrived' WHERE ID = ? AND ResturantID = ? AND dbo.checkStatus(status, 'arrived') IS NOT NULL;", 70+51, ID);
        return;
    }
    else
    {
        wprintf(L"Unknown command\n");
    }
    formatsOrderContition(c);
}


int main()
{
    CustomClient c;
    c.Connect(address, port);

    bool key[3] = { false, false, false };
    bool old_key[3] = { false, false, false };

    bool bQuit = false;

    while (!bQuit)
    {
        if (GetForegroundWindow() == GetConsoleWindow())
        {
            if (GetForegroundWindow() == GetConsoleWindow())
            {
                key[0] = GetAsyncKeyState('1') & 0x8000;
                key[1] = GetAsyncKeyState('2') & 0x8000;
                key[2] = GetAsyncKeyState('3') & 0x8000;
            }

            if (key[0] && !old_key[0]) c.request();
            if (key[1] && !old_key[1]) {}
            if (key[2] && !old_key[2]) bQuit = true;
            for (int i = 0; i < 3; i++) old_key[i] = key[i];
        }

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
                    std::cout << "Press:\n  '1': accept order\n  '2': reject order\n  '3': exit\n";
                }
                break;

                case CustomMsgTypes::newOrder:
                {
                    int newOrder = (int)msg.body.data()[0];
                    std::cout << "New order: " << newOrder << std::endl;
                }
                break;

                case CustomMsgTypes::rejectOrder:
                {
                    iis str(msg);
                    printf(str.cond, str.id);
                }
                break;

                case CustomMsgTypes::acceptOrder:
                {
                    ID = (int)msg.body.data()[0];
                    std::cout << "order " << ID << " accepted\n";
                    wprintf(L"ENTER COMMANDS\n");
                    wprintf(L"  type 'exit' to exit.\n");
                    wprintf(L"  type 'help' to get list of commands.\n\n");
                    formatsOrderContition(&c);
                }
                break;

                case CustomMsgTypes::displayContactRResult:
                {
                    contact conn(msg);
                    conn.print();
                    formatsOrderContition(&c);
                }
                break;

                case CustomMsgTypes::ClientMessage:
                {
                    iis str(msg);
                    printf(str.cond, str.id);
                    formatsOrderContition(&c);
                }
                break;
                case CustomMsgTypes::displayContactOResult:
                {
                    contact conn(msg);
                    conn.print();
                    formatsOrderContition(&c);
                }
                break;

                case CustomMsgTypes::displayOrderResult:
                {
                    order order(msg);
                    order.print();

                    formatsOrderContition(&c);
                }
                break;

                case CustomMsgTypes::acceptRemoval:
                {
                    ID = -1;
                    std::cout << "Press:\n  '1': accept order\n  '2': reject order\n  '3': exit\n";
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
