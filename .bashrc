#! /usr/bin/bash
unset TMP
unset TEMP


for file in .bash_os .bash_core .bash_projects .bash_ssh .bash_local
do
    if [ -f ~/.bash_sources/$file ]; then
        source ~/.bash_sources/$file
    fi
done