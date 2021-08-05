# Banking System

**Dependencies**

- [Docker 20.10.7](https://www.docker.com/)
- [Docker Compose 1.25.0](https://docs.docker.com/compose/install/)
- [Ruby ~2.7.2](https://github.com/ruby/ruby)
- [Rails ~6.1.4](https://github.com/rails/rails)
- [Posgres 13.1](https://www.postgresql.org/about/news/postgresql-13-released-2077/)

### No need to install any of these dependencies, except Docker and Docker Compose

### Setup Environment

- clone _environment.env 
```sh
 $ cp _environment.env environment.env
```
- up and run rails app using docker-compose
```sh
$ docker-compose up --build
```

- if docker-compose failed in database creation, run this
```sh
$ docker-compose exec backend rails db:create db:migrate
```

- run specs
```sh
$ docker-compose exec backend rspec
```

# How it works
```sh
$ rails c
```

then in console

```ruby
UserTransaction.create({from_user: from_user, to_user: to_user, amount: amount) # this will add amount money to "to_user" account, and reduce it from "from_user" balance
```