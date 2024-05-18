#pragma once
#include <windows.h>
#include <sqlext.h>
#include "net_structure.h"


class Database
{
private:
	SQLHENV     hEnv = NULL;
	SQLHDBC     hDbc = NULL;
	WCHAR* pwszConnStr = nullptr;
public:
	SQLHSTMT    hStmt = NULL;
	bool DBconnect(int argc, char** argv)
	{
		if (SQLAllocHandle(SQL_HANDLE_ENV, SQL_NULL_HANDLE, &hEnv) == SQL_ERROR)
		{
			return false;
			exit(-1);
		}

		SQLSetEnvAttr(hEnv, SQL_ATTR_ODBC_VERSION, (SQLPOINTER)SQL_OV_ODBC3, 0);
		SQLAllocHandle(SQL_HANDLE_DBC, hEnv, &hDbc);

		if (argc > 1) pwszConnStr = (WCHAR*)*++argv;
		else pwszConnStr = NULL;
		if (pwszConnStr == NULL)

			SQLDriverConnect(hDbc, GetDesktopWindow(), pwszConnStr, SQL_NTS, NULL, 0, NULL, SQL_DRIVER_COMPLETE);

		SQLAllocHandle(SQL_HANDLE_STMT, hDbc, &hStmt);

		SQLFreeStmt(hStmt, SQL_CLOSE);
		return true;
	}
	bool DBuseResturnt()
	{
		WCHAR stmt[SQL_QUERY_SIZE] = L"USE RESTURANTS;";
		RETCODE RetCode = SQLExecDirect(hStmt, stmt, SQL_NTS);
		bool b = DBHandleDiagnosticRecord(hStmt, SQL_HANDLE_STMT, RetCode);

		SQLFreeStmt(hStmt, SQL_CLOSE);
		return true;
	}
	void DBdisconnect()
	{
		if (hStmt) SQLFreeHandle(SQL_HANDLE_STMT, hStmt);
		if (hDbc) { SQLDisconnect(hDbc); SQLFreeHandle(SQL_HANDLE_DBC, hDbc); }
		if (hEnv) SQLFreeHandle(SQL_HANDLE_ENV, hEnv);
	}
	bool DBHandleDiagnosticRecord(SQLHANDLE hHandle, SQLSMALLINT hType, RETCODE RetCode)
	{
		SQLSMALLINT iRec = 0;
		SQLINTEGER  iError;
		WCHAR       wszMessage[1000];
		WCHAR       wszState[SQL_SQLSTATE_SIZE + 1];


		if (RetCode == SQL_INVALID_HANDLE)
		{
			//fwprintf(stderr, L"Invalid handle!\n");
			return false;
		}

		while (SQLGetDiagRec(hType,
			hHandle,
			++iRec,
			wszState,
			&iError,
			wszMessage,
			(SQLSMALLINT)(sizeof(wszMessage) / sizeof(WCHAR)),
			(SQLSMALLINT*)NULL) == SQL_SUCCESS)
		{
			if (wcsncmp(wszState, L"01004", 5)) return false;
			//    fwprintf(stderr, L"[%5.5s] %s (%d)\n", wszState, wszMessage, iError);
		}
		return true;
	}
};

namespace olc
{
	namespace net
	{
		class DBConn
		{
		private:
			int resturantID = NULL;
			SQLHSTMT    hStmt = NULL;
		public:
			void setStatement(SQLHSTMT hStmt)
			{
				this->hStmt = hStmt;
			}
			int getRID()
			{
				return resturantID;
			}
			void setRID(int ID)
			{
				WCHAR stmt[SQL_QUERY_SIZE];
				int param[] = { ID };
				prepared(param, "SELECT ResturantID FROM ORDER_ WHERE ID = ?;", 44, stmt);
				RETCODE RetCode = SQLExecDirect(hStmt, stmt, SQL_NTS);
				SQLBindCol(hStmt, 1, SQL_C_ULONG, &resturantID, 0, 0);
				if ((RetCode = SQLFetch(hStmt)) == SQL_NO_DATA) { std::cout << resturantID << std::endl; }
				SQLFreeStmt(hStmt, SQL_CLOSE);
			}
			bool LOGIN(char email[], char password[])
			{
				WCHAR stmt[SQL_QUERY_SIZE];
				char* param[] = { email };
				prepared(param, "EXEC getSaltPepper '?', 1;", 26, stmt);  //something here corrupts data
				RETCODE RetCode = SQLExecDirect(hStmt, stmt, SQL_NTS);
				if (RetCode != SQL_SUCCESS) return false;
				char cbsalt[34], cbpepper[34];
				SQLBindCol(hStmt, 1, SQL_C_WCHAR, cbsalt, sizeof(cbsalt), 0);
				SQLBindCol(hStmt, 2, SQL_C_WCHAR, cbpepper, sizeof(cbpepper), 0);
				RetCode = SQLFetch(hStmt);
				if (RetCode == SQL_NO_DATA_FOUND)
				{
					SQLFreeStmt(hStmt, SQL_CLOSE);
					return false;
				}
				SQLFreeStmt(hStmt, SQL_CLOSE);
				char* hash = new char[65];				
				hash = createHash(cbsalt, cbpepper, password);
				hash[64] = 10;
				char* param2[] = { hash };
				prepared(param2, "EXEC checkPassword '?', 1;", 24, stmt);
				RetCode = SQLExecDirect(hStmt, stmt, SQL_NTS);
				if (RetCode != SQL_SUCCESS) return false;
				SQLBindCol(hStmt, 1, SQL_C_ULONG, &resturantID, 0, 0);
				RetCode = SQLFetch(hStmt);
				if (RetCode == SQL_NO_DATA_FOUND)
				{
					SQLFreeStmt(hStmt, SQL_CLOSE);
					return false;
				}
				SQLFreeStmt(hStmt, SQL_CLOSE);
				return true;
			}
			orderContainer displayorder(const char cond[], int length)
			{
				WCHAR stmt[SQL_QUERY_SIZE];
				int param[] = { resturantID };
				prepared(param, cond, length, stmt);
				RETCODE RetCode = SQLExecDirect(hStmt, stmt, SQL_NTS);
				int orderID;
				char orderIDChar[100], arrivalTime[100], status[100], quantity[100], totalprice[100];
				const int MAXORDERIDLENGTH = 50;
				int orderIDs[MAXORDERIDLENGTH];
				int orderIDsLength = 0;
				SQLLEN at = 0;
				wchar_t* null = new wchar_t[4];
				null[0] = 'N';
				null[1] = 'U';
				null[2] = 'L';
				null[3] = 'L';
				null[4] = NULL;

				SQLBindCol(hStmt, 1, SQL_C_ULONG, &orderID, 0, 0);
				SQLBindCol(hStmt, 2, SQL_C_WCHAR, orderIDChar, sizeof(orderIDChar), 0);
				SQLBindCol(hStmt, 6, SQL_C_WCHAR, arrivalTime, sizeof(arrivalTime), &at);
				SQLBindCol(hStmt, 7, SQL_C_WCHAR, status, sizeof(status), 0);
				SQLBindCol(hStmt, 8, SQL_C_WCHAR, quantity, sizeof(quantity), 0);
				SQLBindCol(hStmt, 9, SQL_C_WCHAR, totalprice, sizeof(totalprice), 0);


				orderContainer OC;
				while((RetCode = SQLFetch(hStmt)) != SQL_NO_DATA)
				{
					OC.order.add(orderIDChar, (at == SQL_NULL_DATA) ? (char*)null : arrivalTime, status, totalprice, quantity);
					orderIDs[orderIDsLength] = orderID;
					orderIDsLength++;
				}
				SQLFreeStmt(hStmt, SQL_CLOSE);

				OC.orderLength = orderIDsLength;
				for (int i = 0; i < orderIDsLength; i++)
				{
					WCHAR stmt[SQL_QUERY_SIZE];
					int param2[] = { orderIDs[i] };
					prepared(param2, "SELECT * FROM OrderDetails INNER JOIN ITEM ON ID = itemID WHERE orderID = ?;", 76, stmt);
					RETCODE RetCode = SQLExecDirect(hStmt, stmt, SQL_NTS);
					char quantity[100], unitprice[100], notes[100], name[100];
					SQLLEN n = 0;

					SQLBindCol(hStmt, 3, SQL_C_WCHAR, quantity, sizeof(quantity), 0);
					SQLBindCol(hStmt, 4, SQL_C_WCHAR, unitprice, sizeof(unitprice), 0);
					SQLBindCol(hStmt, 5, SQL_C_WCHAR, notes, sizeof(notes), &n);
					SQLBindCol(hStmt, 8, SQL_C_WCHAR, name, sizeof(name), 0);

					orderDetail orderDetail;
					while ((RetCode = SQLFetch(hStmt)) != SQL_NO_DATA)
					{
						OC.OD[i].add(orderIDs[i], name, quantity, unitprice, (n == SQL_NULL_DATA) ? (char*)null : notes);
					}
					SQLFreeStmt(hStmt, SQL_CLOSE);
				}
				return OC;
			}
			orderContainer displayorder(const char cond[], int length, int ID)
			{
				WCHAR stmt[SQL_QUERY_SIZE];
				int param[] = { resturantID, ID };
				prepared(param, cond, length, stmt);
				RETCODE RetCode = SQLExecDirect(hStmt, stmt, SQL_NTS);
				int orderID;
				char orderIDChar[100], arrivalTime[100], status[100], quantity[100], totalprice[100];
				const int MAXORDERIDLENGTH = 50;
				int orderIDs[MAXORDERIDLENGTH];
				int orderIDsLength = 0;
				SQLLEN at = 0;
				wchar_t* null = new wchar_t[4];
				null[0] = 'N';
				null[1] = 'U';
				null[2] = 'L';
				null[3] = 'L';
				null[4] = NULL;

				SQLBindCol(hStmt, 1, SQL_C_ULONG, &orderID, 0, 0);
				SQLBindCol(hStmt, 2, SQL_C_WCHAR, orderIDChar, sizeof(orderIDChar), 0);
				SQLBindCol(hStmt, 6, SQL_C_WCHAR, arrivalTime, sizeof(arrivalTime), &at);
				SQLBindCol(hStmt, 7, SQL_C_WCHAR, status, sizeof(status), 0);
				SQLBindCol(hStmt, 8, SQL_C_WCHAR, quantity, sizeof(quantity), 0);
				SQLBindCol(hStmt, 9, SQL_C_WCHAR, totalprice, sizeof(totalprice), 0);


				orderContainer OC;
				while ((RetCode = SQLFetch(hStmt)) != SQL_NO_DATA)
				{
					OC.order.add(orderIDChar, (at == SQL_NULL_DATA) ? (char*)null : arrivalTime, status, totalprice, quantity);
					orderIDs[orderIDsLength] = orderID;
					orderIDsLength++;
				}
				SQLFreeStmt(hStmt, SQL_CLOSE);

				OC.orderLength = orderIDsLength;
				for (int i = 0; i < orderIDsLength; i++)
				{
					WCHAR stmt[SQL_QUERY_SIZE];
					int param2[] = { orderIDs[i] };
					prepared(param2, "SELECT * FROM OrderDetails INNER JOIN ITEM ON ID = itemID WHERE orderID = ?;", 76, stmt);
					RETCODE RetCode = SQLExecDirect(hStmt, stmt, SQL_NTS);
					char quantity[100], unitprice[100], notes[100], name[100];
					SQLLEN n = 0;

					SQLBindCol(hStmt, 3, SQL_C_WCHAR, quantity, sizeof(quantity), 0);
					SQLBindCol(hStmt, 4, SQL_C_WCHAR, unitprice, sizeof(unitprice), 0);
					SQLBindCol(hStmt, 5, SQL_C_WCHAR, notes, sizeof(notes), &n);
					SQLBindCol(hStmt, 8, SQL_C_WCHAR, name, sizeof(name), 0);

					orderDetail orderDetail;
					while ((RetCode = SQLFetch(hStmt)) != SQL_NO_DATA)
					{
						OC.OD[i].add(orderIDs[i], name, quantity, unitprice, (n == SQL_NULL_DATA) ? (char*)null : notes);
					}
					SQLFreeStmt(hStmt, SQL_CLOSE);
				}
				return OC;
			}
			contact displayOrderContact(const char cond[], int length, int ID)
			{
				WCHAR stmt[SQL_QUERY_SIZE];
				int param[] = { resturantID, ID };
				prepared(param, cond, length, stmt);
				RETCODE RetCode = SQLExecDirect(hStmt, stmt, SQL_NTS);
				char firstname[100], lastname[100], phoneNumber[100], email[100], country[100];
				char city[100];

				char street[100], streetNumber[100], unit[100], postcode[100];
				SQLLEN ut = 0;
				wchar_t* null = new wchar_t[5];
				null[0] = 'N';
				null[1] = 'U';
				null[2] = 'L';
				null[3] = 'L';
				null[4] = NULL;
				
				SQLBindCol(hStmt, 2, SQL_C_WCHAR, firstname, sizeof(firstname), 0);
				SQLBindCol(hStmt, 3, SQL_C_WCHAR, lastname, sizeof(lastname), 0);
				SQLBindCol(hStmt, 4, SQL_C_WCHAR, phoneNumber, sizeof(phoneNumber), 0);
				SQLBindCol(hStmt, 5, SQL_C_WCHAR, email, sizeof(email), 0);
				SQLBindCol(hStmt, 7, SQL_C_WCHAR, country, sizeof(country), 0);
				SQLBindCol(hStmt, 8, SQL_C_WCHAR, city, sizeof(city), 0);
				SQLBindCol(hStmt, 9, SQL_C_WCHAR, street, sizeof(street), 0);
				SQLBindCol(hStmt, 10, SQL_C_WCHAR, streetNumber, sizeof(streetNumber), 0);
				SQLBindCol(hStmt, 11, SQL_C_WCHAR, unit, sizeof(unit), &ut);
				SQLBindCol(hStmt, 12, SQL_C_WCHAR, postcode, sizeof(postcode), 0);
				
				if ((RetCode = SQLFetch(hStmt)) != SQL_NO_DATA)
				{
					contact contact(firstname, lastname, phoneNumber, email, country, city, street, streetNumber, (ut == SQL_NULL_DATA) ? (char*)null : unit, postcode);
					SQLFreeStmt(hStmt, SQL_CLOSE);
					return contact;
				}
			}
			contact displayResturantContact(const char cond[], int length)
			{
				WCHAR stmt[SQL_QUERY_SIZE];
				int param[] = { resturantID };
				prepared(param, cond, length, stmt);
				RETCODE RetCode = SQLExecDirect(hStmt, stmt, SQL_NTS);
				char name[100], abn[100], phoneNumber[100], email[100];
				char country[100], city[100], street[100], streetNumber[100], unit[100], postcode[100];
				SQLLEN ut = 0;
				wchar_t* null = new wchar_t[5];
				null[0] = 'N';
				null[1] = 'U';
				null[2] = 'L';
				null[3] = 'L';
				null[4] = NULL;

				SQLBindCol(hStmt, 2, SQL_C_WCHAR, name, sizeof(name), 0);
				SQLBindCol(hStmt, 3, SQL_C_WCHAR, abn, sizeof(abn), 0);
				SQLBindCol(hStmt, 6, SQL_C_WCHAR, phoneNumber, sizeof(phoneNumber), 0);
				SQLBindCol(hStmt, 9, SQL_C_WCHAR, email, sizeof(email), 0);
				SQLBindCol(hStmt, 12, SQL_C_WCHAR, country, sizeof(country), 0);
				SQLBindCol(hStmt, 13, SQL_C_WCHAR, city, sizeof(city), 0);
				SQLBindCol(hStmt, 14, SQL_C_WCHAR, street, sizeof(street), 0);
				SQLBindCol(hStmt, 15, SQL_C_WCHAR, streetNumber, sizeof(streetNumber), 0);
				SQLBindCol(hStmt, 16, SQL_C_WCHAR, unit, sizeof(unit), &ut);
				SQLBindCol(hStmt, 17, SQL_C_WCHAR, postcode, sizeof(postcode), 0);

				if ((RetCode = SQLFetch(hStmt)) != SQL_NO_DATA)
				{
					contact contact(name, abn, phoneNumber, email, country, city, street, streetNumber, (ut == SQL_NULL_DATA) ? (char*)null : unit, postcode);
					SQLFreeStmt(hStmt, SQL_CLOSE);
					return contact;
				}
			}
			bool changeStatus(const char cond[], int length, int ID)
			{
				WCHAR stmt[SQL_QUERY_SIZE];
				int param[] = { ID, resturantID };
				prepared(param, cond, length, stmt);
				RETCODE RetCode = SQLExecDirect(hStmt, stmt, SQL_NTS);
				HandleDiagnosticRecord(hStmt, SQL_HANDLE_STMT, RetCode);
				SQLFreeStmt(hStmt, SQL_CLOSE);
				if (RetCode == SQL_NO_DATA_FOUND) return false;
				else if (RetCode == SQL_SUCCESS) return true;
				else return false;

			}
			bool updateArrivalTime(const char cond[], int length, int ID, int AT)
			{
				WCHAR stmt[SQL_QUERY_SIZE];
				int param[] = { AT, ID, resturantID };
				prepared(param, cond, length, stmt);
				RETCODE RetCode = SQLExecDirect(hStmt, stmt, SQL_NTS);
				HandleDiagnosticRecord(hStmt, SQL_HANDLE_STMT, RetCode);
				SQLFreeStmt(hStmt, SQL_CLOSE);
				if (RetCode == SQL_NO_DATA_FOUND) return false;
				else if (RetCode == SQL_SUCCESS) return true;
				else return false;
			}
			bool checkOrderID(const char cond[], int length, int ID)
			{
				WCHAR stmt[SQL_QUERY_SIZE];
				int param[] = { resturantID, ID };
				prepared(param, cond, length, stmt);
				RETCODE RetCode = SQLExecDirect(hStmt, stmt, SQL_NTS);
				int orderID;
				SQLBindCol(hStmt, 1, SQL_C_ULONG, &orderID, 0, 0);
				if ((RetCode = SQLFetch(hStmt)) == SQL_NO_DATA)
				{
					SQLFreeStmt(hStmt, SQL_CLOSE);
					return false;
				}
				else
				{
					SQLFreeStmt(hStmt, SQL_CLOSE);
					return true;
				}

			}
		private:
			void prepared(char** x, const char cstmt[], int cstmtSize, WCHAR wcstmt[])
			{
				for (int i = 0, j = 0, k = 0, m = 0; i + j + m < SQL_QUERY_SIZE; i++)
				{
					if (cstmt[i] == '?' && i < cstmtSize)
					{
						m += j;
						for (j = 0; x[k][j + 1] != NULL && x[k][j] != 10; j++)
							wcstmt[i + j + m] = x[k][j];
						k++;
						j--;
					}
					else if (i < cstmtSize + j)
						wcstmt[i + j + m] = cstmt[i];
					else
						wcstmt[i + j + m] = NULL;
				}
			}
			void prepared(int x[], const char cstmt[], int cstmtSize, WCHAR wcstmt[])
			{
				for (int i = 0, j = 0, l = 0; i + j < SQL_QUERY_SIZE; i++)
				{
					if (cstmt[i] == '?' && i < cstmtSize)
					{
						if (x[l] == 0)
						{
							wcstmt[i + j] = (char)(x[l] + 48);
							l++;
						}
						else
						{
							int k;
							for (k = 1; x[l] % k != x[l]; k *= 10) {}
							for (k = k / 10; k != 0; k /= 10, j++)
							{
								float fx = (float)x[l] / k;
								wcstmt[i + j] = (char)((int)fx + 48);
								x[l] = (int)((fx * k) - ((int)fx * k));
							}
							l++;
							j--;
						}
					}
					else if (i < cstmtSize + j) wcstmt[i + j] = cstmt[i];
					else wcstmt[i + j] = NULL;
				}
			}
			bool HandleDiagnosticRecord(SQLHANDLE hHandle, SQLSMALLINT hType, RETCODE RetCode)
			{
				SQLSMALLINT iRec = 0;
				SQLINTEGER  iError;
				WCHAR       wszMessage[1000];
				WCHAR       wszState[SQL_SQLSTATE_SIZE + 1];


				if (RetCode == SQL_INVALID_HANDLE)
				{
					//fwprintf(stderr, L"Invalid handle!\n");
					return false;
				}

				while (SQLGetDiagRec(hType,
					hHandle,
					++iRec,
					wszState,
					&iError,
					wszMessage,
					(SQLSMALLINT)(sizeof(wszMessage) / sizeof(WCHAR)),
					(SQLSMALLINT*)NULL) == SQL_SUCCESS)
				{
					if (wcsncmp(wszState, L"01004", 5)) return false;
					//    fwprintf(stderr, L"[%5.5s] %s (%d)\n", wszState, wszMessage, iError);
				}
				return true;
			}
		};
	}
}