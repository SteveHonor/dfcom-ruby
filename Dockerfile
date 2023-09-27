FROM ruby:2.3

COPY ./ /code

WORKDIR /code

RUN bundle install

CMD ["puma", "config.ru", "-C", "puma.rb"]