#!/bin/sh

setup_git() {
  git config --global user.email "tran.xuan.nam@framgia.com"
  git config --global user.name "Tran Xuan Nam"
}

fetch() {
  cd _site
  git init
  git remote add origin-pages https://${GH_TOKEN}@github.com/namtx/namtx.github.io.git > /dev/null 2>&1
  git pull origin-pages master
}

setup_git
fetch
