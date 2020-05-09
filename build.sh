#!/bin/bash

pushd /Users/vector/Documents/Dev/ersatzlife.com/
hugo
cp -r public/* ../slightperturbation.github.io/
popd
