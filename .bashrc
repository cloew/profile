#! /usr/bin/bash
unset TMP
unset TEMP


for file in .bash_os .bash_core .bash_local .bash_ssh
do
    if [ -f ~/$file ]; then
        echo Sourcing $file
        source ~/$file
    fi
done
