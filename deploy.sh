#!/bin/bash

set -o errexit

git clone https://${GITHUB_TOKEN}@github.com:pgrangeiro/pgrangeiro.github.io.git tmp
cd tmp
git checkout master
rm -rf *

ls  ~/pgrangeiro/pgrangeiro.github.io/
cp ~/pgrangeiro/pgrangeiro.github.io/index.html .
cp ~/pgrangeiro/pgrangeiro.github.io/CNAME .
cp ~/pgrangeiro/pgrangeiro.github.io/LICENSE.md .
cp -R ~/pgrangeiro/pgrangeiro.github.io/assets .

git status
git add -A .
git status
git commit -a -m "Travis #$TRAVIS_BUILD_NUMBER"
git push -f origin master
