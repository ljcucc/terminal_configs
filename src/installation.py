import os

import terminal

def run():
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
        terminal.clearScreen()

        print("### Installation ###")
        display()

        if prompt():
            return

if __name__ == "__main__":
    run()