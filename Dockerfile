# Dockerfile.rails
FROM ruby:2.7.5

RUN apt-get update -qq \
&& apt-get install -y nodejs

ADD . /vgm-list-ruby
WORKDIR /vgm-list-ruby
run bundle install

EXPOSE 3000

CMD ["bash"]

## Default directory
#ENV INSTALL_PATH /opt/app
#RUN mkdir -p $INSTALL_PATH
#
## Install rails
#RUN gem install rails bundler
## RUN chown -R user:user /opt/app
#WORKDIR /opt/app
#
## run a shell
#CMD ["/bin/sh"]
