#!/bin/sh
echo '👍 ENTRYPOINT HAS STARTED—INSTALLING THE GEM BUNDLE'
bundle install > /dev/null 2>&1
s3_website push
echo '👍 GREAT SUCCESS!'
