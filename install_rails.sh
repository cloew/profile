#! /usr/bin/bash

alias install="sudo apt-get install"

sudo apt-get update
install libsqlite3-dev
install rub1.9.1-dev
sudo gem install rails
sudo gem install sqlite3