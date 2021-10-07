FROM ruby:2.7

# 作業するディレクトリを指定
WORKDIR /var/www

# Docerにコピー
COPY ./src /var/www/

# コマンドを実行する
RUN bundle config --local set path 'vendor/bundle' \
    && bundle install

# バッシュを起動
# コマンドを適当にDockerで起動させるとエラーが起きやすい
CMD [ "bundle", "exec", "ruby", "app.rb" ]