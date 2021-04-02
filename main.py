import os

import installation
import terminal

def init():
    terminal.clearScreen()
    print("Welcome to use restore and backup tool.")
    main_menu()

    print("bye bye!")

def command_not_found():
    print("error command, please try again")

def restore():
    os.system("sh ./scripts/init.sh")

def main_menu():

    def display():
        print("i ) install options")
        print("r ) install basic package and setup configs")
        print("b ) backup your config files")
    
    def prompt():
        ans = input("h for help > ")
        
        if(ans == "h"):
            # help_menu()
            command_not_found()
        elif ans == "r":
            restore()
        elif ans == "b":
            # backup()
            command_not_found()
        elif ans == "i":
            installation.run()
        elif ans == "q":
            return True
        else:
            command_not_found()

    while True:
        print("### main menu ###")
        display()
        if prompt():
            return
        terminal.clearScreen() 

if __name__ == "__main__":
    init()
