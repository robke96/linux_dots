#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main() {
    char name[] = "tray";
    char command[1000];
    FILE *fp;
    int tray_PID;

    sprintf(command, "xprop -name 'Polybar tray window' _NET_WM_PID | grep -o \'[[:digit:]]*\'");
    fp = popen(command, "r");

    if (fp == NULL) {
        exit(1);
    }

    char output[100];
    if (fgets(output, sizeof(output), fp) != NULL) {
        tray_PID = atoi(output);
        sprintf(command, "kill %d", tray_PID);
        system(command);
    } else {
        sprintf(command, "polybar %s", name);
        system(command);
    }

    pclose(fp);
    return 0;
}
