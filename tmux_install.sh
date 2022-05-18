#!/usr/bin/env bash
#install tmux and set up some configurations
echo "please run as a normal user."
cd 
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .

git clone https://github.com/gpakosz/.tmux.git ~/oh-my-tmux
ln -s -f ~/oh-my-tmux/.tmux.conf ~/.tmux.conf
cp ~/oh-my-tmux/.tmux.conf.local ~/.tmux.conf.local

echo "finish"
