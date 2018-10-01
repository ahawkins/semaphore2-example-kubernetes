FROM ruby:2.5

RUN gem install rack thin

ADD app.rb /usr/src/app/

EXPOSE 8080

CMD [ "rackup", "-o", "0.0.0.0", "-p", "8080", "/usr/src/app/app.rb" ]
