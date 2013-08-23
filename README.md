SQL Designer Generator
======================

Generator XML file for WWW SQL Designer import file.

ActiveRecord を使って DB にアクセスしてテーブル情報取得したあとに
[WWW SQL Designer](http://code.google.com/p/wwwsqldesigner/) の インポート用 XML を生成するやっつけ仕事です。
PostgreSQL でしか確認してないしカラム情報も怪しいですが
とりあえずテーブルは出力できたので満足

Getting Started
---------------

    $ bundle install --path vendor/bundle

Edit target database name:

    $ vim main.rb

    DBNAME = 'dbname' # <= database name

Run:

    $ bundle exec ruby main.rb

xml がどばって標準出力される気がする

License
--------

MIT License.

