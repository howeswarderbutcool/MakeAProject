#!/bin/bash

template=$1

projectName=$2

workDir=$(pwd)

function error() {
    echo "an error occured, you need to enter the template type an optinal project name and directory"
}

export projectName
if [ -n "$2" ]; then
    mkdir $2
    workDir=$2
fi

if [ -n "$template" ]; then
    if [ "$template" == "cpp" ]; then
        cp -r /usr/local/bin/makeCppProject/CPPTemplate/ "$workDir"
        mv "$workDir"/CPPTemplate/ "$workDir"/"$projectName"
        exit 0
    fi
else
    error
    exit 1
fi 
