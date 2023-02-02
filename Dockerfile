## Dockerfile.rails
#FROM ruby:2.7.5
#
#RUN apt-get update -qq \
#&& apt-get install -y nodejs
#
#ADD . /vgm-list-ruby
#WORKDIR /vgm-list-ruby
#run bundle install
#
#EXPOSE 3000
#
#CMD ["bash"]
#
### Default directory
##ENV INSTALL_PATH /opt/app
##RUN mkdir -p $INSTALL_PATH
##
### Install rails
##RUN gem install rails bundler
### RUN chown -R user:user /opt/app
##WORKDIR /opt/app
##
### run a shell
##CMD ["/bin/sh"]

# https://salzam.com/create-and-dockerize-rails-application-with-mysql-and-sidekiq/

FROM ruby:2.7.5

# install rails dependencies
RUN apt-get clean all && apt-get update -qq && apt-get install -y build-essential libpq-dev \
    curl gnupg2 apt-utils default-libmysqlclient-dev git libcurl3-dev cmake \
    libssl-dev pkg-config openssl imagemagick file nodejs yarn


RUN mkdir /rails-app
WORKDIR /rails-app

# Adding gems
COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock
RUN bundle install

COPY . /rails-app

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]