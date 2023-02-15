# Auto-Artix
(personal) Post-install configurations for Artix Linux

## Personal
This not only contains a script to install necessary things after installing Artix Linux, but also this:

- [Package list](https://github.com/YogurtQQ/Auto-Artix/blob/main/package.list): A collection of my favorite software that I always use, so I want it to be installed as soon as possible.
- [Keyboard bindings](https://github.com/YogurtQQ/Auto-Artix/blob/main/dconf-settings.conf): The configuration for my Cinnamon DE shortcuts. Some of them are similar to i3-wm, as Alt+Q for closing windows, Alt+Enter for terminal, and more:

## Keyboard bindings
#### Basic
A-z = run 'flameshot gui' (screenshot software)  
A-d = open application finder
A-x = open the default file manager  
A-enter = open terminal  
A-c = not binded, but may use it for 'command execute' or web browser  
A-e = not binded, but may use it for logout menu
#### Windows
A-q = close window  
A-r = resize window  
C-A-space = maximize window
##### Workspaces
A-1 = Go to workspace 1  
A-2 = Go to workspace 2  
A-3 = Go to workspace 3  
A-4 = Go to workspace 4  
A-shift-1 = Move to workspace 1  
A-shift-2 = Move to workspace 2  
A-shift-3 = Move to workspace 3  
A-shift-4 = Move to workspace 4  



## Build
1. Clone repository.

`git clone https://github.com/treel0ver/Auto-Artix`

2. Change directory into directory.

`cd Auto-Artix`

3. Run as root.

`sudo sh run.sh`

### Oneliner
`cd $(xdg-user-dir DOWNLOAD);git clone https://github.com/treel0ver/Auto-Artix;cd Auto-Artix;sudo sh run.sh`


