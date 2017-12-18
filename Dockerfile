FROM ruby:2.4.3
MAINTAINER David Zumbrunnen <zumbrunnen@gmail.com>

ENV INSTALL_PATH /yealink
ENV RAILS_ENV production
ENV SECRET_KEY_BASE makememoresecureifyouwantoraddmewhilerunningthecontainer
ENV RAILS_SERVE_STATIC_FILES true

EXPOSE 80

RUN mkdir -p $INSTALL_PATH
WORKDIR $INSTALL_PATH

COPY Gemfile Gemfile
RUN bundle install
COPY . .
RUN bundle exec rails assets:precompile
RUN bundle exec rails db:migrate

CMD bundle exec rails server -p 80
