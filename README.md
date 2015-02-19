# Dotfiles

My config files for bash, git, ruby and other useful scripts.

## Instalation & Usage

### Installing everything at once

    ./install.sh

### Installing one by one

Go to the script/install directory

    cd script/install

And run the files one by one.

All required Ubuntu packages - build essentials, git, mercurial and some libraries

    ./required.sh

Install vcprompt for bash

    ./vcprompt.sh

Link all rc files

    ./link.sh

Install RVM

    ./rvm.sh

We don't need to configure RVM in ~/.bashrc, since it's already done.