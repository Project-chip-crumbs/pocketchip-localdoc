#!/bin/bash

pushd pocketchip-docs
git checkout gh-pages
popd

mv pocketchip-docs/* pocketchip-localdoc/pocketchip-localdoc/
pushd pocketchip-localdoc/pocketchip-localdoc
for file in ./images/*; do convert $file -resize 400 $file; done
popd

./bs.py > pocketchip-localdoc/new-index.html
mv pocketchip-localdoc/new-index.html pocketchip-localdoc/index.html
