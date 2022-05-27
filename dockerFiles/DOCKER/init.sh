#!/bin/bash -x

cp ./dockerFiles/rds-test.dump /docker-entrypoint-initdb.d
exec -ti stands pg_restore -v -U postgres -c -C -d postgres ./rds-test.dump