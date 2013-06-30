#! /usr/bin/env bash

#mkdir vim
#cp ~/.vim/* vim -rf
rsync -ur --progress --exclude=.git* --stats ~/.vim/ vim
cp ~/.vimrc vimrc
