#!/bin/sh

echo npx test of script.sh got $1 and $2 pwd=`pwd`
app=${1:-app}
repo=${2:-y1}
user=${3:-gdrapeau}
repo"y1"
rm -rf $app
mkdir $app
cd $app
wget -P master.zip https://github.com/$user/$repo/archive/master.zip -O master.zip
unzip master.zip
mv ${repo}-main/* .
rm -rf ${repo}-main
rm master.zip
chmod a+x do/*
do/init-download
ls .
