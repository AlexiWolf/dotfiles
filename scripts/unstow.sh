#! /usr/bin/sh

stow --verbose --target=$HOME/.config/ -D config/
stow --verbose --target=$HOME/.local/bin/ -D scripts/
