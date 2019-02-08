FROM ruby:2.6.1

# Set default locale for the environment
ENV LC_ALL C.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8

LABEL "com.github.actions.name"="Builds with AWS Cloudfront"
LABEL "com.github.actions.description"="Using S3_website gem"
LABEL "com.github.actions.icon"="globe"
LABEL "com.github.actions.color"="green"

LABEL "repository"="http://github.com/benarent/jekyll-deploy-cloudfront/s/tree/master/build"

ADD entrypoint.sh /entrypoint.sh


ENTRYPOINT ["/entrypoint.sh"]
