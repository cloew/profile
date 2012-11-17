#! /usr/bin/bash
unset TMP
unset TEMP


for file in .bash_core .bash_local .bash_ssh
do
    if [ -f ~/$file ]; then
        source ~/$file
    fi
done