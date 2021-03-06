#!/bin/sh
echo '👍 ENTRYPOINT HAS STARTED—INSTALLING THE GEM BUNDLE'
bundle install > /dev/null 2>&1
bundle list | grep "jekyll ("
echo 'Cleaning the yokes. '
bundle exec jekyll clean
echo '👍 BUNDLE INSTALLED—BUILDING THE SITE'
bundle exec jekyll build
echo '👍 THE SITE IS BUILT—PUSHING IT BACK TO S3'
s3_website push
echo '👍 GREAT SUCCESS!'
