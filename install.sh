#!/bin/bash

virtualenv -p python2.7 ~/virtualenvs/krill
source ~/virtualenvs/krill/bin/activate
pip install -r requirements.txt
deactivate
sudo aptitude install elinks
sudo ln -s `pwd`/runelinks /usr/bin/runelinks
