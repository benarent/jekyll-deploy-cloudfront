FROM circleci/2.6.1-node-browsers-legacy

# Needed to run S3 Website Gem 
# RUN sudo apt-get install --assume-yes openjdk-7-jre 

# Set default locale for the environment
ENV LC_ALL C.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8

LABEL "com.github.actions.name"="Build & Deploy to S3 and Cloudfront"
LABEL "com.github.actions.description"="Builds & deploys the project to S3 and Cloudfront"
LABEL "com.github.actions.icon"="globe"
LABEL "com.github.actions.color"="orange"

LABEL "repository"="https://github.com/benarent/jekyll-deploy-cloudfront"

ADD entrypoint.sh /entrypoint.sh


ENTRYPOINT ["/entrypoint.sh"]
