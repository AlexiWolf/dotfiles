#! /usr/bin/sh

mkdir -p $HOME/.config/
mkdir -p $HOME/.local/bin/

stow --verbose --target=$HOME/.config/ -S config/
stow --verbose --target=$HOME/.local/bin/ -S scripts/
