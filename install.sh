#!/bin/sh

echo "Installing all packages..."

PWD=`pwd`

for path in $PWD/packages/* ; do
  [ -d "${path}" ] || continue
  echo "--> $path"
  cd $path
  npm install
done
