# Introduction

Vim plugin for loading sack shortcuts.

sack[1] provides wrapper scripts for ack[2], ag
(aka The Silver Searcher[3]) and grep adding (cross-terminal) shortcuts and
profiles.

This plugin adds support for opening cross-terminal shortcuts from inside vim
for better integration of grep like searches across terminal and vim sessions.

sack and its documentation can be found on github[1]

# Installation

## vundle

Add this repository to your vundle file:

    ...
    Bundle 'git://github.com/urso/sack_shortcut.git'
    ...

## pathogen

Copy this directory to yur bundles directory:

    git clone https://github.com/urso/github-theme.git $(HOME)/.vim/bundle

[1] https://github.com/sampson-chen/sack.
[2] http://beyondgrep.com/
[3] https://github.com/ggreer/the_silver_searcher
