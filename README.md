# Twitter

## Build Setup
### git clone
```
$ git clone https://github.com/THitokuse/twitter.git

$ cd twitter

// clone時のみ行う
// 新しいプロジェクトを立ち上げるためのコマンド
$ docker-compose run web rails new . --force --database=mysql

$ docker-compose build
```

### Setup database
```
$ docker-compose run web bundle exec rake db:create

$ docker-compose run web bundle exec rake db:migrate
```

### serve with hot reload at localhost:3000
```
$ docker-compose up

// To confirm localhost:3000
```
