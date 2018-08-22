#!/bin/sh

# Run db migration and seeds for users and locations databases

docker-compose run users-service knex migrate:latest --env development --knexfile app/knexfile.js
docker-compose run users-service knex seed:run --env development --knexfile app/knexfile.js

docker-compose run locations-service knex migrate:latest --env development --knexfile app/knexfile.js
docker-compose run locations-service knex seed:run --env development --knexfile app/knexfile.js
