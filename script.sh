#!/bin/sh

echo npx test of script.sh got $1 and $2 pwd=`pwd`
app=${1:-app}
repo=${2:-y1}
user=${3:-gdrapeau}

mv $app $app-`date +%y%m%d_%H%M%S`
rm -rf $app
mkdir $app

cd $app
wget -P master.zip https://github.com/$user/$repo/archive/master.zip -O master.zip
unzip master.zip
mv ${repo}-main/{.*,*} .
rm -rf ${repo}-main
rm master.zip
chmod a+x do/*
do/init-download $app $repo $user $4 $5 $6
ls -a .
