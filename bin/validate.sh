#!/bin/bash

docker run \
    --rm \
    -v $(pwd):/usr/src/app \
    -e JEKYLL_ENV=production \
    screenlyio_jekyll bundle exec htmlproofer ./_site

