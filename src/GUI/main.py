import tkinter as tk
import tkinter.font as font
from tkinter.messagebox import askyesno, askquestion

class Main(tk.Tk):
    def __init__(self):
        super().__init__()

        self.title("termianl-configs")
        self.geometry('300x400')


        btn1 = tk.Button(text="Install vimrc",
            width = 18,
            height = 2,
            command=self.install_vimrc)
        btn1.pack(expand=True)
    
    def install_vimrc(self):
        answer = askyesno(title='Vimrc gonna install',
            message='Your vimrc will be rewrite, do you want to continue?')

# def createGUI():
#     title = tk.Label(text="terminal-configs")
#     title.config(width=20, height=3, font=("Arial", 25))
#     title.pack()

def run():
    app = Main()
    app.mainloop()

if __name__ == "__main__":
    print("please run from `make run` or testing will continue...")

    print("no test are running, exiting...")