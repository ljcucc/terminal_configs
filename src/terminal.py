import os
import platform

def clearScreen():
    os.system("clear")

def checkOS():
    print(os.name)
    print(platform.system())
    print(platform.release())
    print(platform.machine())
    
    release = platform.release()

    if(release == "Darwin"):
        return "macOS"

if __name__ == "__main__":
    checkOS()