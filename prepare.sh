#!/bin/bash
set -x

pushd pocketchip-docs
git checkout gh-pages
popd

mkdir pocketchip-localdoc
cp -R pocketchip-docs/* pocketchip-localdoc/
pushd pocketchip-localdoc/
for file in ./images/*; do convert $file -resize 400 $file; done

sed -i -e 's/<script.*script>//' index.html
perl -i -pe 'BEGIN{undef $/;} s/<a href="#" id="nav-button".*page-wrapper">/    <div class="page-wrapper">/smg' index.html
sed -i -e 's/<a href="//' index.html
sed -i -e 's/">.*a>//' index.html

popd

cp dropins/* pocketchip-localdoc/stylesheets/

#./bs.py > pocketchip-localdoc/new-index.html
#mv pocketchip-localdoc/new-index.html pocketchip-localdoc/index.html
