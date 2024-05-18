#pragma once
#include <net.h>


class CustomClient : public olc::net::client_interface<CustomMsgTypes>
{
public:
    void sendLogin(char email[], char pass[])
    {
        olc::net::message<CustomMsgTypes> msg;
        msg.header.id = CustomMsgTypes::loginCredentials;

        LoginCred LC = LoginCred(email, pass);
        msg << LC;
        Send(msg);
    }
    void sendChangeStatus(const char cond[], int length, int ID)
    {
        olc::net::message<CustomMsgTypes> msg;
        msg.header.id = CustomMsgTypes::changeStatus;

        iis CSTC = iis(cond, length, ID);
        msg << CSTC;
        Send(msg);
    }
    void sendUpdateArrivalTime(const char cond[], int length, int ID, int AT)
    {
        olc::net::message<CustomMsgTypes> msg;
        msg.header.id = CustomMsgTypes::changeArrivalTime;

        changeATCred CAT = changeATCred(cond, length, ID, AT);
        msg << CAT;
        Send(msg);
    }
    void sendDisplayOrderContact(const char cond[], int length, int ID)
    {
        olc::net::message<CustomMsgTypes> msg;
        msg.header.id = CustomMsgTypes::displayOrderContact;

        iis DOC = iis(cond, length, ID);
        msg << DOC;
        Send(msg);
    }
    void sendDisplayResturantContact(const char cond[], int length)
    {
        olc::net::message<CustomMsgTypes> msg;
        msg.header.id = CustomMsgTypes::displayResturantContact;

        is DOC = is(cond, length);
        msg << DOC;
        Send(msg);
    }
    void sendDisplayOrder(const char cond[], int length)
    {
        olc::net::message<CustomMsgTypes> msg;
        msg.header.id = CustomMsgTypes::displayOrder;

        is DOC = is(cond, length);
        msg << DOC;
        Send(msg);
    }
    void sendDisplayOrder(const char cond[], int length, int ID)
    {
        olc::net::message<CustomMsgTypes> msg;
        msg.header.id = CustomMsgTypes::displaySpecificOrder;

        iis DOC = iis(cond, length, ID);
        msg << DOC;
        Send(msg);
    }
    void sendFinishedOrder(int ID)
    {
        olc::net::message<CustomMsgTypes> msg;
        msg.header.id = CustomMsgTypes::finishedOrder;

        msg << (uint8_t)ID;
        Send(msg);
    }
    void request()
    {
        olc::net::message<CustomMsgTypes> msg;
        msg.header.id = CustomMsgTypes::requestOrder;
        std::cout << "Requesting Order..." << std::endl;
        Send(msg);
    }
    void remove(int ID)
    {
        olc::net::message<CustomMsgTypes> msg;
        msg.header.id = CustomMsgTypes::removeOrder;
        msg << (uint8_t)ID;
        Send(msg);
    }
};

int convertToInt(const char* ch)
{
    float flt = 0;
    int j = 10;
    for (int i = 0; ch[i] != 10 && ch[i] != ' '; i++, j = j * 10)
        flt += (float)(ch[i] - 48) / j;
    return (int)(flt * (j / 10));
}

bool compare(char* x, const char* y, int xstart, int xend)
{
    for (int i = xstart, j = 0; i <= xend; i++, j++)
        if (y[j] != x[i]) return false;
    return true;
}