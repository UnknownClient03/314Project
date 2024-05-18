#pragma once
#include "net_connection.h"

#define INPUT_SIZE 50
#define MESSAGE_SIZE 50

enum class CustomMsgTypes : uint32_t
{
	ServerAccept,
	ServerDeny,
	ServerPing,
	MessageAll,
	ServerMessage,
	loginCredentials,
	ClientMessage_SuccLogIn,
	ClientMessage_FailLogIn,
	ClientMessage,
	changeStatus,
	changeArrivalTime,
	displayOrderContact,
	displayResturantContact,
	displayContactOResult,
	displayContactRResult,
	displayOrder,
	displaySpecificOrder,
	displayOrderResult,
	displayOrderDetailResult,
	finishedOrder,
	newOrder,
	requestOrder,
	rejectOrder,
	acceptOrder,
	removeOrder,
	acceptRemoval,
};

struct LoginCred
{
	char email[INPUT_SIZE];
	char pass[INPUT_SIZE];
	LoginCred(char x[], char y[])
	{
		for (int i = 0; i < INPUT_SIZE; i++)
		{
			email[i] = x[i];
			pass[i] = y[i];
		}
	}
	LoginCred(olc::net::message<CustomMsgTypes> x)
	{
		for (int i = 0; i < INPUT_SIZE; i++) email[i] = x.body.data()[i];
		for (int i = 0; i < INPUT_SIZE; i++) pass[i] = x.body.data()[INPUT_SIZE + i];
	}
};

struct is
{
	uint8_t length;
	char cond[SQL_QUERY_SIZE];

	is(const char cond[], int length)
	{
		for (int i = 0; i < SQL_QUERY_SIZE; i++) this->cond[i] = cond[i];
		this->length = length;
	}
	is(olc::net::message<CustomMsgTypes> x)
	{
		this->length = x.body.data()[0];
		for (int i = 0; i < SQL_QUERY_SIZE; i++) this->cond[i] = x.body.data()[i + 1];
	}
};

struct iis
{
	uint8_t id;
	uint8_t length;
	char cond[SQL_QUERY_SIZE];

	iis(const char cond[], int length, int id)
	{
		for (int i = 0; i < SQL_QUERY_SIZE; i++) this->cond[i] = cond[i];
		this->length = length;
		this->id = id;
	}
	iis(olc::net::message<CustomMsgTypes> x)
	{
		this->id = x.body.data()[0];
		this->length = x.body.data()[1];
		for (int i = 0; i < SQL_QUERY_SIZE; i++) this->cond[i] = x.body.data()[i + 2];
	}
	
};

struct changeATCred
{
	uint8_t ID;
	uint8_t AT;
	uint8_t length;
	char cond[SQL_QUERY_SIZE];
	changeATCred(const char cond[], int length, int ID, int AT)
	{
		this->ID = ID;
		this->AT = AT;
		this->length = length;
		for (int i = 0; i < SQL_QUERY_SIZE; i++) this->cond[i] = cond[i];
	}
	changeATCred(olc::net::message<CustomMsgTypes> x)
	{
		this->ID = x.body.data()[0];
		this->AT = x.body.data()[1];
		this->length = x.body.data()[2];
		for (int i = 0; i < SQL_QUERY_SIZE; i++) this->cond[i] = x.body.data()[i + 3];
	}
};

struct contact
{
	char str[160];

	uint8_t firstname = 20;
	uint8_t lastname = 20;
	uint8_t phoneNumber = 10;
	uint8_t email = 40;
	uint8_t country = 20;
	uint8_t city = 20;
	uint8_t street = 20;
	uint8_t streetNumber = 4;
	uint8_t unit = 2;
	uint8_t postcode = 4;

	contact() {}

	contact(char * firstname, char * lastname, char* phoneNumber, char* email, char* country, char* city, char* street, char* streetNumber, char* unit, char* postcode)
	{
		int i = 0;
		int j;
		for (j = 0; j < this->firstname && firstname[j * 2] != 0; j++, i++)	      str[i] = firstname[j * 2];
		for (; j < this->firstname; j++, i++) str[i] = ' ';
		for (j = 0; j < this->lastname && lastname[j * 2] != 0; j++, i++)	      str[i] = lastname[j * 2];
		for (; j < this->lastname; j++, i++) str[i] = ' ';
		for (j = 0; j < this->phoneNumber && phoneNumber[j * 2] != 0; j++, i++)   str[i] = phoneNumber[j * 2];
		for (; j < this->phoneNumber; j++, i++) str[i] = ' ';
		for (j = 0; j < this->email && email[j * 2] != 0; j++, i++)		          str[i] = email[j * 2];
		for (; j < this->email; j++, i++) str[i] = ' ';
		for (j = 0; j < this->country && country[j * 2] != 0; j++, i++)           str[i] = country[j * 2];
		for (; j < this->country; j++, i++) str[i] = ' ';
		for (j = 0; j < this->city && city[j * 2] != 0; j++, i++)	              str[i] = city[j * 2];
		for (; j < this->city; j++, i++) str[i] = ' ';
		for (j = 0; j < this->street && street[j * 2] != 0; j++, i++)		      str[i] = street[j * 2];
		for (; j < this->street; j++, i++) str[i] = ' ';
		for (j = 0; j < this->streetNumber && streetNumber[j * 2] != 0; j++, i++) str[i] = streetNumber[j * 2];
		for (; j < this->streetNumber; j++, i++) str[i] = ' ';
		for (j = 0; j < this->unit && unit[j * 2] != 0; j++, i++)	              str[i] = unit[j * 2];
		for (; j < this->unit; j++, i++) str[i] = ' ';
		for (j = 0; j < this->postcode && postcode[j * 2] != 0; j++, i++)	      str[i] = postcode[j * 2];
		for (; j < this->postcode; j++, i++) str[i] = ' ';
		str[i] = '\0';
	}
	contact(olc::net::message<CustomMsgTypes> x)
	{
		for (int i = 0; i < 160; i++) str[i] = x.body.data()[i];
	}

	void print()
	{
		str[19] = '\0';
		char* firstname = &str[0];

		str[39] = '\0';
		char* lastname = &str[20];

		str[49] = '\0';
		char* phoneNumber = &str[40];

		str[89] = '\0';
		char* email = &str[50];

		str[109] = '\0';
		char* country = &str[90];

		str[129] = '\0';
		char* city = &str[110];

		str[149] = '\0';
		char* street = &str[130];

		str[153] = '\0';
		char* streetNumber = &str[150];

		str[155] = '\0';
		char* unit = &str[154];

		str[160] = '\0';
		char* postcode = &str[156];


		std::cout << "Name: " << firstname << " " << lastname << std::endl;
		std::cout << "Phone Number: " << phoneNumber << std::endl;
		std::cout << "Email Address: " << email << std::endl;
		std::cout << "Address: " << country << ", " <<
									city << ", " <<
									street << ", " <<
									streetNumber << ", " <<
									unit << ", " <<
									postcode << std::endl << std::endl;
	}
};

struct order
{
	uint8_t index = 0;
	char str[66][10];
	order() {}
	order(olc::net::message<CustomMsgTypes> x)
	{
		this->index = x.body.data()[0];
		for (int i = 0; i < 66; i++)
			for (int j = 0; j < 10; j++)
				str[i][j] = x.body.data()[(i * 10 + j) + 1];
	}
	void add(char *orderID, char *arrivalTime, char *status, char *totalPrice, char *totalQuantity)
	{
		int j;
		int i = 0;
		for (j = 0; j < 12 && orderID[j * 2] != 0      ; j++, i++) str[i][index] = orderID[j * 2];
		for (	  ; j < 12						       ; j++, i++) str[i][index] = ' ';
		str[i][index] = '|';
		i++;
		for (j = 0; j < 12 && arrivalTime[j * 2] != 0  ; j++, i++) str[i][index] = arrivalTime[j * 2];
		for (	  ; j < 12							   ; j++, i++) str[i][index] = ' ';
		str[i][index] = '|';
		i++;
		for (j = 0; j < 12 && status[j * 2] != 0	   ; j++, i++) str[i][index] = status[j * 2];
		for (	  ; j < 12							   ; j++, i++) str[i][index] = ' ';
		str[i][index] = '|';
		i++;
		str[i][index] = '$';
		i++;
		for (j = 0; j < 11 && totalPrice[j * 2] != 0   ; j++, i++) str[i][index] = totalPrice[j * 2];
		for (	  ; j < 11							   ; j++, i++) str[i][index] = ' ';
		str[i][index] = '|';
		i++;
		for (j = 0; j < 12 && totalQuantity[j * 2] != 0; j++, i++) str[i][index] = totalQuantity[j * 2];
		for (	  ; j < 12							   ; j++, i++) str[i][index] = ' ';
		str[i][index] = '\n';
		index++;
	}
	void print()
	{
		if (index == 0)
		{
			printf("No orders availiable\n");
			return;
		}
		printf("%12s|%12s|%12s|%12s|%12s\n", "ID", "Arrival Time", "Status", "Total price", "Quantity");

		for (int i = 0; i < index; i++) for (int j = 0; j < 65; j++) std::cout << str[j][i]; std::cout << std::endl;
	}
};

struct orderDetail
{
	uint8_t ID;
	uint8_t index = 0;
	char str[100][10];

	orderDetail() {}
	orderDetail(olc::net::message<CustomMsgTypes> x)
	{
		this->ID = x.body.data()[0];
		this->index = x.body.data()[1];
		for (int i = 0; i < 100; i++)
			for (int j = 0; j < 10; j++)
				str[i][j] = x.body.data()[(i * 10 + j) + 2];
	}

	void add(int ID, char* name, char *quantity, char* unitprice, char* notes)
	{
		this->ID = ID;
		int j;
		int i = 0;
		for (j = 0; j < 39 && name[j * 2] != 0; j++, i++) str[i][index] = name[j * 2];
		for (; j < 39; j++, i++) str[i][index] = ' ';
		str[i][index] = '|';
		i++;
		for (j = 0; j < 12 && quantity[j * 2] != 0; j++, i++) str[i][index] = quantity[j * 2];
		for (; j < 12; j++, i++) str[i][index] = ' ';
		str[i][index] = '|';
		i++;
		str[i][index] = '$';
		i++;
		for (j = 0; j < 11 && unitprice[j * 2] != 0; j++, i++) str[i][index] = unitprice[j * 2];
		for (; j < 11; j++, i++) str[i][index] = ' ';
		str[i][index] = '|';
		i++;
		for (j = 0; j < 33 && notes[j * 2] != 0; j++, i++) str[i][index] = notes[j * 2];
		for (; j < 33; j++, i++) str[i][index] = ' ';
		str[i][index] = '\n';
		index++;
	}

	void print()
	{
		printf("Order ID: %2i\n", ID);
		printf("%39s|%12s|%12s|%33s\n", "Item Name", "Quantity", "unit Price", "Item Notes");

		for (int i = 0; i < index; i++) for (int j = 0; j < 100; j++) std::cout << str[j][i]; std::cout << std::endl;
	}
};

struct orderContainer
{
	order order;
	int orderLength;
	orderDetail OD[10];
};