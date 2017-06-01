#!/bin/bash

set -e

git clone https://${GITHUB_TOKEN}@github.com:pgrangeiro/pgrangeiro.github.io.git tmp
cd tmp
git checkout master
rm -rf *

cp ~/pgrangeiro/pgrangeiro.github.io/index.html .
cp ~/pgrangeiro/pgrangeiro.github.io/CNAME .
cp ~/pgrangeiro/pgrangeiro.github.io/LICENSE.md .
cp -R ~/pgrangeiro/pgrangeiro.github.io/assets .

git status
git add -A .
git status
git commit -a -m "Travis #$TRAVIS_BUILD_NUMBER"
git push -f origin master
