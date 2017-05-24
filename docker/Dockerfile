FROM ruby:2.4.1
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /simple_cms
ADD Gemfile /simple_cms/Gemfile
ADD Gemfile.lock /simple_cms/Gemfile.lock
ADD . /simple_cms/
WORKDIR /simple_cms

# run only do it with workdir
# for docker no point of using ./bin/bundle since there is only one version, although, for some reason all the bundles are installed in usr/local anyways, seems like .bundle/config is ignored
RUN bundle install
RUN bundle clean


# for any excuteable scripts, need to do this
RUN chmod +x /simple_cms/kubernetes/run_rails.sh

EXPOSE 8000
ENV PORT 8000