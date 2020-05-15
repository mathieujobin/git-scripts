#!/bin/sh

mkdir -p ~/bin
chmod +x bin/*
cp bin/* ~/bin

error="missing ~/bin in \$PATH, you should add it with\nexport PATH=~/bin:\$PATH"
type git-pristine > /dev/null 2>&1 && echo "all done, have fun" || echo $error
