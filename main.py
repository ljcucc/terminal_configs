import os

def init():
    clearScreen()
    print("Welcome to use restore and backup tool.")
    main_menu()

    print("bye bye!")

def command_not_found():
    print("error command, please try again")

def installation():
    print("### Installation ###")

    packages = {
            "z":"zsh",
            "oz":"oh-my-zsh",
            "mzd":"make zsh as default",
            "t":"tmux",
            "g":"git",
            "q":"quit"

    }

    debain_pkgs = {
            "zsh":"sudo apt-get install zsh",
            "tmux":"sudo apt-get install tmux",
            "git":"sudo apt-get install git",
            "oh-my-zsh":'sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"',
            "make zsh as default":"sudo vi /etc/passwd;chsh -s $(which zsh)",
            "quit": ""
    }

    def display():
        for key in packages:
            item = packages[key]
            print(key + " ) " + item)

    def prompt():
        ans = input("install> ")
        if(ans == "q"):
            return True
        
        os.system(debain_pkgs[packages[ans]])

        input("---enter to continue---")

    while True:
        clearScreen()

        print("### Installation ###")
        display()

        if prompt():
            return

def clearScreen():
    os.system("clear")

def restore():
    os.system("sh ./init.sh")

def main_menu():

    def display():
        print("i ) install options")
        print("r ) install basic package and setup configs")
        print("b ) backup your config files")
    def prompt():
        ans = input("h for help > ")
        
        if(ans == "h"):
            help_menu()
        elif ans == "r":
            restore()
        elif ans == "b":
            backup()
        elif ans == "i":
            installation()
        elif ans == "q":
            return True
        else:
            command_not_found()

    while True:
        print("### main menu ###")
        display()
        if prompt():
            return
        clearScreen() 

init()
