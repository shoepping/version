#!/bin/bash

TODAY=`date +%y.%m.%d`

echo ${TODAY}

git commit -m "${TODAY},versions update" version
git push origin master
git tag -a v${TODAY} -m "tag v${TODAY}"
git push origin v${TODAY}

# git commit -m "${TODAY}, plugins update" plugins.txt
# git push origin master

# delete tag
# git tag -d v${TODAY}
# git push origin --delete v${TODAY}
