FROM ruby:2.5.0

WORKDIR /opt/playground/

COPY Gemfile* /opt/playground/
RUN bundle install --path vendor/bundle

COPY . /opt/playground

EXPOSE 4567

CMD ["bundle", "exec", "ruby", "starter.rb"]
