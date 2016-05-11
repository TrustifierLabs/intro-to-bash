#!/bin/bash
#

if [ -d .git ] && [ -f .git/HEAD ];  then
	echo This looks like a git-controlled directory
else
	echo No git repo found, why don\'t you try git init?
fi
