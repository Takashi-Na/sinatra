FROM ruby:2.7

# 作業するディレクトリを指定
WORKDIR /var/www

# Docerにコピー
COPY ./src /var/www/

# バッシュを起動
# コマンドを適当にDockerで起動させるとエラーが起きやすい
CMD [ "/bin/bash" ]