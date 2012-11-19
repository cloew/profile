#! /usr/bin/bash

function mkgitdir () {
    mkdir $1
    cd $1
    git init
    git remote add origin $2
    git pull origin master
    git push -u origin master
}

# Set Git Default 
cd ~
git push -u origin master

# Set up core folders
mkdir $dev_dir
mkdir $ide_dir
mkdir $test_dir

# Setup Kao Tessur Folders
mkdir $kao_dir

# Get PIP
get-pip
pip install blessings

# Setup Kao Console
mkgitdir $kao_console_dir git@github.com:cloew/KaoConsole.git
python setup.py install # Install the Kao Console

# Setup Nyt Owl
mkgitdir $nytowl_dir git@github.com:cloew/Nyt-Owl-Editor.git

# Setup Pokemon Python
mkgitdir $pkmn_dir git@github.com:cloew/Pokemon-Project.git

# Setup Excelcient Directories
mkdir $exc_dir

# Setup Prosperion
mkgitdir $prosp_dir git@github.com:cloew/Project001.git
