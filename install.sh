#!/usr/bin/env bash

if [ -f ./customizations/init.js ]; then
    cd customizations
    npm install
    node ./init.js
fi
