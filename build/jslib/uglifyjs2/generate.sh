#!/bin/bash

rm -rf ./temp
mkdir temp
cd temp
mkdir node_modules
npm install uglify-js2
node_modules/.bin/uglifyjs2 --self -b -o raw.js
node ../combine.js
cat ../smpre.txt node_modules/uglify-js2/node_modules/source-map/lib/source-map.js ../smpost.txt > ../../source-map.js
cp -r node_modules/uglify-js2/node_modules/source-map/lib/source-map ../../source-map
