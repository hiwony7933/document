gitbook install && gitbook build

cd _book

git init

git remote add origin https://github.com/hiwony7933/document.git

git pull origin gh-pages --allow-unrelated-histories

git checkout -b gh-pages

git add -A

git commit -m "update"

git push -u origin +gh-pages

