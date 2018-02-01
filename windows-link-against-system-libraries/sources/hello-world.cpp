#include <windows.h>


int main()
{
    LogonUser("", "", "", 0, 0, NULL);
    return 0;
}
