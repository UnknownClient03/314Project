#include <iostream>
#include <net.h>


class orderQueue
{
private:
	int queue[100];
	std::shared_ptr<olc::net::connection<CustomMsgTypes>> clients[100];
	int index = 0;
public:
	void add(int val)
	{
		queue[index] = val;
		clients[index] = nullptr;
		index++;
	}
	int get()
	{
		int i = 0;
		for (; i < index; i++)
			if (clients[i] == nullptr)
				break;
		if (i == index || index == 0) return -1;
		return queue[i];
	}
	void remove(int val)
	{
		for (int i = 0; i < index; i++)
			if (queue[i] == val)
			{
				for (int j = queue[i]; j < index - 1; j++)
				{
					queue[i] = queue[i + 1];
					clients[i] = clients[i + 1];
				}
			}
		index--;
	}
	bool check(int val)
	{
		for (int i = 0; i < index; i++)
			if (queue[i] == val)
				return true;
		return false;
	}
	void setClient(int val, std::shared_ptr<olc::net::connection<CustomMsgTypes>> client)
	{
		for (int i = 0; i < index; i++)
			if (val == queue[i])
			{
				clients[i] = client;
				return;
			}
	}
};

class CustomServer : public olc::net::server_interface<CustomMsgTypes>, public Database
{
public:
	CustomServer(uint16_t nPort) : olc::net::server_interface<CustomMsgTypes>(nPort)
	{

	}

protected:
	virtual bool OnClientConnect(std::shared_ptr<olc::net::connection<CustomMsgTypes>> client)
	{
		client->setStatement(hStmt);
		olc::net::message<CustomMsgTypes> msg;
		msg.header.id = CustomMsgTypes::ServerAccept;
		client->Send(msg);
		return true;
	}

	virtual void OnClientDisconnect(std::shared_ptr<olc::net::connection<CustomMsgTypes>> client)
	{
		std::cout << "Removing client [" << client->GetID() << "]\n";
	}

	virtual void OnMessage(std::shared_ptr<olc::net::connection<CustomMsgTypes>> client, olc::net::message<CustomMsgTypes>& msg)
	{
		switch (msg.header.id)
		{
			break;

		case CustomMsgTypes::loginCredentials:
		{
			olc::net::message<CustomMsgTypes> backMsg;

			LoginCred LC(msg);
			if (client->LOGIN(LC.email, LC.pass))
			{
				std::cout << "[" << client->GetID() << "]: Successfully Logged In: " << client->getRID() << std::endl;
				backMsg.header.id = CustomMsgTypes::ClientMessage_SuccLogIn;
				backMsg << "Successfully Logged In...\n";
				client->Send(backMsg);

				olc::net::message<CustomMsgTypes> backMsg2;
				backMsg2.header.id = CustomMsgTypes::displayContactRResult;
				contact contact = client->displayResturantContact("SELECT * FROM Resturant INNER JOIN Contact ON ID = Contact.ResturantID INNER JOIN RAddress ON ID = RAddress.ResturantID WHERE ID = ?;", 133);
				backMsg2 << contact;
				client->Send(backMsg2);
			}
			else
			{
				std::cout << "[" << client->GetID() << "]: Unsuccessfully Logged In\n";
				backMsg.header.id = CustomMsgTypes::ClientMessage_FailLogIn;
				backMsg << "UnSuccessfully Logged In";
				client->Send(backMsg);
			}
		}
		break;
		case CustomMsgTypes::changeStatus:
		{
			olc::net::message<CustomMsgTypes> backMsg;
			backMsg.header.id = CustomMsgTypes::ClientMessage;

			iis CSTC(msg);

			if (client->changeStatus(CSTC.cond, (int)CSTC.length, CSTC.id))
			{
				iis s("Order '%i' has been updated\n\n", 29, CSTC.id);
				backMsg << s;
			}
			else
			{
				iis s("Order '%i' cannot be updated\n\n", 23, CSTC.id);
				backMsg << s;
			}
			client->Send(backMsg);
		}
		break;
		case CustomMsgTypes::changeArrivalTime:
		{
			olc::net::message<CustomMsgTypes> backMsg;
			backMsg.header.id = CustomMsgTypes::ClientMessage;

			changeATCred CAT(msg);
			if (client->updateArrivalTime(CAT.cond, CAT.length, CAT.ID, CAT.AT))
			{
				iis s("Order '%i' has been updated\n\n", 29, (unsigned int)CAT.ID);
				backMsg << s;
			}
			else
			{
				iis s("Order '%i' cannot be updated\n\n", 23, CAT.ID);
				backMsg << s;
			}
			client->Send(backMsg);
		}
		break;
		case CustomMsgTypes::displayOrderContact:
		{
			olc::net::message<CustomMsgTypes> backMsg;
			backMsg.header.id = CustomMsgTypes::displayContactOResult;

			iis DOC(msg);
			contact contact = client->displayOrderContact(DOC.cond, DOC.length, DOC.id);

			backMsg << contact;
			client->Send(backMsg);
		}
		break;
		case CustomMsgTypes::displayResturantContact:
		{
			olc::net::message<CustomMsgTypes> backMsg;
			backMsg.header.id = CustomMsgTypes::displayContactOResult;

			is DOC(msg);
			contact contact = client->displayResturantContact(DOC.cond, DOC.length);

			backMsg << contact;
			client->Send(backMsg);
		}
		break;
		case CustomMsgTypes::displayOrder:
		{
			olc::net::message<CustomMsgTypes> backMsg;
			backMsg.header.id = CustomMsgTypes::displayOrderResult;

			is DOC(msg);
			orderContainer OC = client->displayorder(DOC.cond, DOC.length);

			for (int i = 0; i < OC.orderLength; i++)
			{
				olc::net::message<CustomMsgTypes> backMsg2;
				backMsg2.header.id = CustomMsgTypes::displayOrderDetailResult;
				backMsg2 << OC.OD[i];
				client->Send(backMsg2);
			}

			backMsg << OC.order;
			client->Send(backMsg);
		}
		break;
		case CustomMsgTypes::displaySpecificOrder:
		{
			olc::net::message<CustomMsgTypes> backMsg;
			backMsg.header.id = CustomMsgTypes::displayOrderResult;

			iis DOC(msg);
			orderContainer OC = client->displayorder(DOC.cond, DOC.length, DOC.id);

			for (int i = 0; i < OC.orderLength; i++)
			{
				olc::net::message<CustomMsgTypes> backMsg2;
				backMsg2.header.id = CustomMsgTypes::displayOrderDetailResult;
				backMsg2 << OC.OD[i];
				client->Send(backMsg2);
			}

			backMsg << OC.order;
			client->Send(backMsg);
		}
		break;
		case CustomMsgTypes::finishedOrder:
		{
			olc::net::message<CustomMsgTypes> backMsg;
			backMsg.header.id = CustomMsgTypes::newOrder;
			int orderID = (int)msg.body.data()[0];
			if (client->checkOrderID("SELECT ID FROM ORDER_ WHERE ResturantID = ? AND ID = ? AND status = 'completed';", 80, orderID) && !queue.check(orderID))
			{
				queue.add(orderID);
				backMsg << orderID;
				MessageAllClients(backMsg, client);
			}
		}
		break;
		case CustomMsgTypes::requestOrder:
		{
			olc::net::message<CustomMsgTypes> backMsg;
			uint8_t itemID = queue.get();
			if (itemID == 255)
			{
				backMsg.header.id = CustomMsgTypes::rejectOrder;
				iis str("No orders valid in queue\n", 25, 0);
				backMsg << str;
			}
			else
			{
				backMsg.header.id = CustomMsgTypes::acceptOrder;
				backMsg << itemID;
				client->setRID(itemID);
				queue.setClient(itemID, client);

				olc::net::message<CustomMsgTypes> backMsg2;
				backMsg2.header.id = CustomMsgTypes::rejectOrder;
				iis str("Order: %i has been taken\n", 25, itemID);
				backMsg2 << str;
				MessageAllClients(backMsg2, client);
			}
			client->Send(backMsg);
		}
		break;
		case CustomMsgTypes::removeOrder:
		{
			int orderID = (int)msg.body.data()[0];
			olc::net::message<CustomMsgTypes> backMsg;

			if (client->checkOrderID("SELECT ID FROM ORDER_ WHERE ResturantID = ? AND ID = ? AND status = 'arrived';", 78, orderID))
			{
				backMsg.header.id = CustomMsgTypes::acceptRemoval;
				queue.remove(orderID);
			}
			else
			{
				backMsg.header.id = CustomMsgTypes::ClientMessage;
				iis str("Order: %i is not completed yet\n", 31, orderID);
				backMsg << str;
			}
			client->Send(backMsg);
		}
		break;
		}
	}
private:
	orderQueue queue;
};
