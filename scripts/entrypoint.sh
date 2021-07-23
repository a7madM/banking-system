#!/bin/sh

./scripts/wait-for-it.sh -t 0 $POSTGRES_HOST:$POSTGRES_PORT

kill -9 $(cat /app/tmp/pids/server.pid)
rm -rf /app/tmp/pids/server.pid

if [ "$RAILS_ENV" = "development" ]; then
    bundle install --clean --with 'development test'
    rails db:prepare
fi

rails db:migrate
rails db:seed

passenger start -b 0.0.0.0 -p 3000
