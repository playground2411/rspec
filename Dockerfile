FROM ruby:3.3.4

# アプリケーションディレクトリを作成
RUN mkdir app

# アプリケーションディレクトリを作業用ディレクトリに設定
WORKDIR /app
ADD . .
RUN bundle install

EXPOSE 3000