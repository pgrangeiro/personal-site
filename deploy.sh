git clone https://${GITHUB_TOKEN}@github.com:pgrangeiro/pgrangeiro.github.io.git ../tmp
cd ../tmp
git checkout master
rm -rf *
echo "Cloned master"

cp -R ../pgrangeiro.github.io/_site/index.html .
cp -R ../pgrangeiro.github.io/_site/CNAME .
cp -R ../pgrangeiro.github.io/_site/LICENSE.md .
cp -R ../pgrangeiro.github.io/_site/assets .
echo "Copy files"

git status
git add -A .
git status
git commit -a -m "Travis #$TRAVIS_BUILD_NUMBER"
git push -f origin `master`
echo "Finished push"
