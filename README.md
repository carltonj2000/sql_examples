# Postgres / SQL Tutorial

The code in this repository is based on the
[SQL Tutorial for Beginners](https://www.youtube.com/watch?v=tp_5c6jaNQE)
video tutorial.

Data used for the later examples in this tutorial were generated from
[https://postgres-fake-data.netlify.com/](https://postgres-fake-data.netlify.com/)

Sql files generated using the dbeaver GUI.

## Postgres

- dbeaver for db management via a GUI
- brew install postgres
- pg_ctl -D /usr/local/var/postgres stop/start
- createuser -s postgres
- createdb tester
- psql tester # open cli with database
- psql -c "\du"
- psql -c "\l"
- psql -U carltonjoseph -c "drop database postgres"
- psql -c "drop user postgress"
- psql -l
- psql
  - '\d' List of relations
  - `\du` display users
  - `\l` list databases
  - create user postgres superuser
  - create database postgres with owner postgres
  - 'd user' describe a user table in the db
