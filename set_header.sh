# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    set_header.sh                                      :+:      :+:    :+:    #
#                                                     +:+ +:+   +:+    +:+     #
#    By: Maurice809 <maurice809@hotmail.com>        +#+  +:+    +#++:++#       #
#                                                 +#+#+#+#+#+ +#+    +#+       #
#    Created: 2025/06/09 08:53:46 by Maurice809        #+#   #+#    #+#        #
#    Updated: 2025/06/09 08:53:53 by Maurice809       ###    ########          #
#                                                                              #
# **************************************************************************** #

#!/bin/bash
# ./set_header.sh

# Set variables

if [ ! -z "$USER" ]
then
    echo "USER=`/usr/bin/whoami`" >> ~/.zshrc
    echo "export USER" >> ~/.zshrc
fi

if [ ! -z "$GROUP" ]
then
    echo "GROUP=`/usr/bin/id -gn $user`" >> ~/.zshrc
    echo "export GROUP" >> ~/.zshrc
fi

if [ ! -z "$MAIL" ]
then
    echo "MAIL="$USER@student.42.fr"" >> ~/.zshrc
    echo "export MAIL" >> ~/.zshrc
fi

mkdir -p ~/.vim/plugin

# Add stdheader to vim plugins
cp plugin/stdheader.vim ~/.vim/plugin/

source ~/.zshrc
