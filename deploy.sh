#!/bin/bash

pushd /Users/vector/Documents/Dev/ersatzlife.com/
hugo
cd /Users/vector/Documents/Dev/slightperturbation.github.io/
echo "Commiting new site to repo: $PWD"
if [[ "$PWD" -ef "/Users/vector/Documents/Dev/slightperturbation.github.io/" ]]; then
	git rm -r *
	git commit -m auto_clean
	cp -r /Users/vector/Documents/Dev/ersatzlife.com/public/* /Users/vector/Documents/Dev/slightperturbation.github.io/
	git add .
	git commit -m auto_update
	git push origin master
else
	echo "Can't find static repo."
fi
popd
