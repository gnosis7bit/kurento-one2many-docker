#!/bin/bash
set -e

cd /src/kurento-tutorial-node/kurento-one2many-call

if [ -d "$node_modules" ]; then
    rm -r node_modules
fi
npm cache clean --force
npm install
cd static
bower install --allow-root
npm start -- --ws_uri=ws://${KURENTO_MEDIA_SERVER_HOST}:${KURENTO_MEDIA_SERVER_PORT}/kurento