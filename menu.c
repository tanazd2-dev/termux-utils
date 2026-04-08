#include <ncurses.h>

int main() {
    initscr();              // Start ncurses mode
    cbreak();               // Disable line buffering
    noecho();               // Don't show typed characters
    keypad(stdscr, TRUE);   // Enable arrow keys

    char *choices[] = {"Option 1", "Option 2", "Option 3", "Exit"};
    int n_choices = sizeof(choices) / sizeof(char*);
    int highlight = 0;
    int ch;

    while(1) {
        clear();  // Clear screen

        // Print menu
        for(int i = 0; i < n_choices; i++) {
            if(i == highlight)
                attron(A_REVERSE);  // Highlight selected
            mvprintw(i + 1, 2, choices[i]);
            if(i == highlight)
                attroff(A_REVERSE);
        }

        ch = getch();  // Wait for user input
        switch(ch) {
            case KEY_UP:
                highlight--;
                if(highlight < 0) highlight = n_choices - 1;
                break;
            case KEY_DOWN:
                highlight++;
                if(highlight >= n_choices) highlight = 0;
                break;
            case 10:  // Enter key
                if(highlight == n_choices - 1) { // Exit
                    endwin();
                    return 0;
                }
                mvprintw(n_choices + 2, 2, "You selected: %s", choices[highlight]);
                getch(); // Wait for key
                break;
        }
    }

    endwin();  // End ncurses mode
    return 0;
}
