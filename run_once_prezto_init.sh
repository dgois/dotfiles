#!/bin/sh

PREZTODIR=${ZDOTDIR:-$HOME}/.zprezto
REPO=https://github.com/sorin-ionescu/prezto.git

if [ ! -d $PREZTODIR ]; then
  git clone --recursive $REPO "$PREZTODIR"
fi

setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done
