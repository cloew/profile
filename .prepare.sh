#! /usr/bin/bash

# Source the Bash Profile
if [ -f ~/.bashrc ]; then
	source ~/.bashrc
fi

# Set Git Default 
cd ~
gpsom

# Set up core folders
mkdir $dev_dir
mkdir $ide_dir
mdkir $test_dir

# Setup Kao Tessur Folders
mkdir $kao_dir

# Get PIP
get-pip
pip install blessings

# Setup Kao Console
mkdir $kao_console_dir
cd $kao_console_dir
g-start git@github.com:cloew/KaoConsole.git
py-install # Install the Kao Console

# Setup Nyt Owl
mkdir $nytowl_dir
cd $nytowl_dir
g-start git@github.com:cloew/Nyt-Owl-Editor.git

# Setup Pokemon Python
mkdir $pkmn_dir
cd $pkmn_dir
g-start git@github.com:cloew/Pokemon-Project.git

# Setup Excelcient Directories
mkdir $exc_dir

# Setup Prosperion
mkdir $prosp_dir
cd $prosp_dir
g-start git@github.com:cloew/Project001.git