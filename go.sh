#! /usr/bin/env bash

up(){
  #pushes to rep
  echo "pushing local files to repository"
  rsync -ur --progress --exclude=.git* --stats ~/.vim/ vim
  cp ~/.vimrc vimrc
  git add .
  git commit
  git push origin master
}

down(){
  echo "cloning repository to local"
  git pull origin master
  cp vim/* ~/.vim
  cp vimrc ~/.vimrc
}

case $1 in
  "u" | "up")
    up
    ;;

  "d" | "down")
    down
    ;;

  *)
    echo "need parameter (u)p or (d)own"
esac
