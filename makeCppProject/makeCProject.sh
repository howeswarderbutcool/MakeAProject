#!/bin/bash

projectName=$1

export projectName

workDir=$(pwd)

cp -r /usr/local/bin/makeCppProject/CPPTemplate/ "$workDir"

mv "$workDir"/CPPTemplate/ "$projectName"