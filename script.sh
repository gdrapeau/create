#!/bin/sh

echo npx test of script.sh got $1 and $2 pwd=`pwd`
app=$1
rep="gdrapeau/y1"
mkdir $app
cd $app
wget -P master.zip https://github.com/$repo/archive/master.zip
unzip master.zip
rm master.zip
ls .
