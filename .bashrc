#! /usr/bin/bash
unset TMP
unset TEMP


for file in .bash_os .bash_core .bash_local .bash_ssh
do
    if [ -f ~/.bash_sources/$file ]; then
        source ~/.bash_sources/$file
    fi
done
