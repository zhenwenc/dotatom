#!/bin/sh

PWD=`pwd`

echo "Updating all submodules..."

git submodule foreach git pull origin master

echo "Installing all packages..."

for path in $PWD/packages/* ; do
  [ -d "${path}" ] || continue
  echo "--> $path"
  cd $path
  npm install
done
