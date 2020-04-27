# Twitter

## Build Setup
### git clone
```
$ git clone https://github.com/THitokuse/twitter.git

$ cd twitter

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
