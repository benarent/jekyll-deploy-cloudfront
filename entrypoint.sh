#!/bin/sh
echo '👍 ENTRYPOINT HAS STARTED—INSTALLING THE GEM BUNDLE'
bundle install > /dev/null 2>&1
bundle list | grep "jekyll ("
echo '👍 BUNDLE INSTALLED—BUILDING THE SITE'
RUN chown -R jekyll /Users
bundle exec jekyll build
echo '👍 THE SITE IS BUILT—PUSHING IT BACK TO S3'
s3_website push
echo '👍 GREAT SUCCESS!'
