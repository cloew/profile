#! /usr/bin/bash

source ~/.bashrc

function get-apt-cyg() {
	wget http://apt-cyg.googlecode.com/svn/trunk/apt-cyg
	chmod +x apt-cyg
	mv apt-cyg /usr/local/bin 
	apt-cyg install unzip
}

case $OSTYPE in
    cygwin )
		get-apt-cyg
		install="apt-cyg install" ;;
    linux-gnu )
		install="sudo apt-get install"
        sudo usermod -a -G adm root
        sudo chgrp adm /home
        sudo chmod g+w /home
        sudo chgrp -R adm /usr/local
        sudo chmod -R g+w /usr/local ;;
esac

# Set Git Default 
git config --global user.name "Chris Loew"
git config --global user.email cloew123@gmail.com
git config --global push.default matching

cd ~
git push -u origin master

# Set up core folders
mkdir $dev_dir
mkdir $ide_dir
mkdir $test_dir

# Setup Kao Tessur Folders
mkdir $kao_dir
mkdir $kao_games_dir
mkdir $kao_lib_dir
mkdir $kao_pbf_dir
mkdir $kao_cli_dir
mkdir $kao_data_dir
mkdir $kao_gen_dir
mkdir $kao_flask_di
mkdir $kao_nyt_dir
mkdir $kao_pbf_dir
mkdir $kao_py_dir
mkdir $kao_ui_dir

# Get PIP
$install curl
get-pip python
get-pip python3
pip install virtualenv
pip install virtualenvwrapper
pip install blessings
pip install flask
pip install requests

source ~/.bashrc

# Setup Kao Console
mkgitdirAndInstall $kao_console_dir git@github.com:cloew/KaoConsole.git

# Setup Kao Deck
mkgitdirAndInstall $kao_deck_dir git@github.com:cloew/KaoDeck.git

# Setup Kao Factory
mkgitdirAndInstall $kao_factory_dir git@github.com:cloew/KaoFactory.git

# Setup Kao Flask
mkgitdirAndInstall $kao_flask_dir git@github.com:cloew/KaoFlask.git

# Setup Kao Flask
mkgitdirAndInstall $kao_gui_dir git@github.com:cloew/KaoGUI.git

# Setup PBF
mkgitdirAndInstall $pbf_dir git@github.com:cloew/ProgrammersBestFriend.git

# Setup DevTools PBF
mkgitdirAndInstall $devtools_pbf_dir git@github.com:cloew/DevToolsPBF.git

# Setup KaoGUI PBF
mkgitdirAndInstall $kaogui_pbf_dir git@github.com:cloew/KaoGUIPBF.git

# Setup Toggl PBF
mkgitdirAndInstall $toggl_pbf_dir git@github.com:cloew/TogglPBF.git

# Setup Unittest PBF
mkgitdirAndInstall $unittest_pbf_dir git@github.com:cloew/UnittestPBF.git

# Setup pytoggl
mkgitdirAndInstall $pytoggl_dir git@github.com:cloew/pytoggl.git

# Setup Deck Building
mkgitdir $deck_building_dir git@github.com:cloew/DeckBuilding.git

# Setup Nyt Owl
mkgitdir $nytowl_dir git@github.com:cloew/Nyt-Owl-Editor.git

# Setup Pokemon Python
mkgitdir $pkmn_dir git@github.com:cloew/Pokemon-Project.git
