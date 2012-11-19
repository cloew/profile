#! /usr/bin/bash

function mkgitdir () {
    mkdir $1
    cd $1
    git init
    git remote add origin $2
    git pull origin master
    git push -u origin master
}

function get-pip {
	install curl
	curl http://python-distribute.org/distribute_setup.py | python
	rm distribute-0.6.30.tar.gz
	curl https://raw.github.com/pypa/pip/master/contrib/get-pip.py | python
}

function get-apt-cyg() {
	wget http://apt-cyg.googlecode.com/svn/trunk/apt-cyg
	chmod +x apt-cyg
	mv apt-cyg /usr/local/bin 
	apt-cyg install unzip
}

case $OSTYPE in
    cygwin )
		get-apt-cyg
		alias install="apt-cyg install" ;;
    linux-gnu )
		alias install="sudo apt-get install"
        usermod -a -G adm root
        sudo chgrp adm /home
        sudo chmod g+w /home ;;
esac

# Set Git Default 
git config --global user.name "Chris Loew"
git config --global user.email cloew123@gmail.com

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
