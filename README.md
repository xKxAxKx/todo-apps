# todo-apps
## これはなにか
- いろんなフレームワークを使ってtodoアプリを使ってみる練習用リポジトリ

## Docker
```
$ cd docker
$ docker-compose up -d
```

### 起動
```
$ docker start mysql-todo-apps
```

### 停止
```
$ docker stop mysql-todo-apps
```

### 接続
```
$ mysql -h 0.0.0.0 -P 33306 -u mysql -p
```

## Ruby on Rails
### 環境
- ruby === 2.6.1
- rails === 5.2.2

### パッケージのインストール
```
$ bundle install --path=vendor/bundle
$ cd rails_app
$ bundle install --path=vendor/bundle
```

### 起動
```
$ bundle exec rails server -p 8000
```
