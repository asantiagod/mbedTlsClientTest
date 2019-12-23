#include <stdio.h>
#include <winsock2.h>

const char* svrIP = "google.com.co";
unsigned short port = 80;

const char *testMsg = "GET / HTTP/1.1\r\n\r\n";

char rxBuffer[2000];
int rxBytes;


int main(void)
{
    WSADATA wsadata;
    SOCKET  sckt;
    SOCKADDR_IN server;
    struct hostent *hp;

    if(WSAStartup(MAKEWORD(2,2),&wsadata) !=0 )
    {
        printf("Winsock startup failed. Error code: %d\r\n",WSAGetLastError());
        return 1;
    }
    printf("Winsock initialized\r\n");

    /* Initialize a TCP socket */
    sckt = socket(AF_INET,SOCK_STREAM,0);
    if(sckt == INVALID_SOCKET)
    {
        printf("Socket wasn't created. Error code: %d\r\n",WSAGetLastError());
        return 1;
    }
    printf("Socket created\r\n");

    /* Connect to the server */
    hp = gethostbyname(svrIP);
    if (hp == NULL)
    {
        printf("gethostbyname() failed\n");
        return 1;
    }

    printf("host ip: %s\r\n",inet_ntoa(*(IN_ADDR*)hp->h_addr_list[0]));
    server.sin_addr = *(IN_ADDR*)hp->h_addr_list[0];
    server.sin_port = htons(port);
    server.sin_family = AF_INET;

    if(connect(sckt,(SOCKADDR*)&server,sizeof(server)) != 0)
    {
        puts("Connection error\r\n");
        return 1;
    }

    if(send(sckt,testMsg,strlen(testMsg),0) < 0)
        puts("Sending error\r\n");

    rxBytes = recv(sckt,rxBuffer,sizeof(rxBuffer)-1,0);
    if(rxBytes == SOCKET_ERROR)
        puts("Receiving error\r\n");
    rxBuffer[rxBytes] = '\0';
    puts(rxBuffer);

    closesocket(sckt);
    return 0;
}

