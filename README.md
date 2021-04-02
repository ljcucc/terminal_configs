# terminal_configs
Termianl Configs is an repository of my config files.

## Get Started

### Requirements

Package below must pre-installed, which are in-built on macOS, Ubuntu, Chromebook(crostini)

* python3
* curl
* vim

### Setup

Clone this repo: 
```bash
git clone https://github.com/ljcucc/terminal_configs.git
```

Run `main.py` script with python3 in termial_configs folder
```bash
python3 ./src/main.py
```

or using make comamnd to run it:
```bash
make run
```

then command prompt will popup:

```
### main menu ###
i ) install options
r ) install basic package and setup configs
b ) backup your config files
h for help > _
```

* type `i` for install tmux, ohmyzsh, zsh, or more...
  * or using `make install` to open 
* type `r` for install special vimrc, vim-plug, tpm (tmux package manager)

## Compatibility

* Ubuntu (tested)
* macOS BigSur (`install options` will not working)
* Windows (unsupported)