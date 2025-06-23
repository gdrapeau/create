#!/bin/sh

echo npx test of script.sh got $1 and $2 pwd=`pwd`
app=$1
repo="gdrapeau/y1"
rm -rf $app
mkdir $app
cd $app
wget -P master.zip https://github.com/$repo/archive/master.zip -O master.zip
unzip master.zip
rm master.zip
ls .
