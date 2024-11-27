#!/usr/bin/env sh

set -e

npm run build

cd dist

git add -A

git commit -m "New Deployement"

git push -f git@github.com:Harley755/portfolio-vuejs.git master:gh-pages

cd -