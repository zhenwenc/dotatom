#!/bin/sh

dest=package.txt

echo "Exporting APM installed packages list to $dest"

apm list --installed --bare > $dest
