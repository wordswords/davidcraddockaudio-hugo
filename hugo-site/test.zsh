#!/bin/zsh

set -e
set -x

rm -rf public/*
hugo --gc
hugo server --config ./hugo.yaml 

