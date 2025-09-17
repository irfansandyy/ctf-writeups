#include <stdio.h>
#include <string.h>

void access(int pin)
{
    if (pin == 1234)
    {
        FILE *file = fopen("flag.txt", "r");
        if (file == NULL)
        {
            printf("Arrr! Me treasure map be lost in the sea!\n");
            return;
        }
        char flag[100];
        fgets(flag, sizeof(flag), file);
        printf("Here be yer treasure, matey:\n%s\n", flag);
        fclose(file);
    }
    else
    {
        printf("\nYe son of a biscuit eater! get out of me treasure before I make ye walk the plank!\n");
    }
}

void menu()
{
    char piratename[15];
    int pin;

    printf("QUEEN ANNE'S REVENGE: Brig Treasure\n");
    printf("ye want riches? well then,\n");
    printf("identify yerself, ye scallywag: ");
    gets(piratename);
    printf(piratename);
    printf("\nhand over yer PIN: ");
    gets(&pin);

    if ((strcmp(piratename, "blackbeard") == 0) && pin == 123)
    {
        printf("\nAhoy, Cap'n Blackbeard! yer crews be ready for yer orders!\n");
        access(pin);
    }
    else if ((strcmp(piratename, "pirate") == 0) && pin == 789)
    {
        printf("\nAye, regular lad! Full sail on the brig!\n");
    }
    else
    {
        printf("\nYe Landlubber! Get off me ship and be lost in the sea with them sirens!\n");
    }
}

int main()
{
    setvbuf(stdout, NULL, _IONBF, 0);
    setvbuf(stdin, NULL, _IONBF, 0);

    menu();
}