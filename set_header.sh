# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    set_header.sh                                      :+:      :+:    :+:    #
#                                                     +:+ +:+   +:+    +:+     #
#    By: Maurice809 <maurice809@hotmail.com>        +#+  +:+    +#++:++#       #
#                                                 +#+#+#+#+#+ +#+    +#+       #
#    Created: 2025/06/09 08:53:46 by Maurice809        #+#   #+#    #+#        #
#    Updated: 2025/08/10 12:10:40 by Maurice809       ###    ########          #
#                                                                              #
# **************************************************************************** #

#!/bin/bash
# ./set_header.sh

# Set variables

if [ ! -z "$USER" ]
then
    echo "USER=`/usr/bin/whoami`" >> ~/.bashrc
    echo "export USER" >> ~/.bashrc
fi

if [ ! -z "$GROUP" ]
then
    echo "GROUP=`/usr/bin/id -gn $user`" >> ~/.bashrc
    echo "export GROUP" >> ~/.bashrc
fi

if [ ! -z "$MAIL" ]
then
    echo "MAIL="$USER@student.42.fr"" >> ~/.bashrc
    echo "export MAIL" >> ~/.bashrc
fi

mkdir -p ~/.vim/plugin

# Add stdheader to vim plugins
cp plugin/stdheader.vim ~/.vim/plugin/
cp conf/.vimrc ~/
cp conf/.viminfo ~/

source ~/.bashrc
