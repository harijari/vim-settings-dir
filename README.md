vim-settings-dir
================

My shared .vim directory. 
This configuration includes all vim extensions and some basic .vimrc file used by me in all-day drupal development.

Installation
================
1. Clone this repository to your home directory as .vim directory. 

    `git clone git://github.com/harijari/vim-settings-dir.git ~/.vim;`

2. Initialize and update modules

    `cd ~/.vim;
    git submodule init;
    git submodule update;`

3. Link .vimrc from repository to your local .vimrc file (please make sure it doesn't exist).

    `ln ~/.vim/vimrc ~/.vimrc;`
    
4. Follow commandt module configuration procedure (you need to compile ruby extensions).
5. At this moment, you are ready to go :)