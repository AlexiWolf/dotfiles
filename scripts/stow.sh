#! /usr/bin/sh

mkdir -p $HOME/.config/
mkdir -p $HOME/.local/bin/
mkdir -p $HOME/.local/autorun/

stow --verbose --target=$HOME/.config/ -S config/
stow --verbose --target=$HOME/.local/bin/ -S scripts/
stow --verbose --target=$HOME/.local/autorun/ -S autorun/
