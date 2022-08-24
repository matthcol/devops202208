-- create schema and tables for a movie database
-- fill tables with sample data
--
-- edit/run pg_cine_initdb.sql to create database and user 
-- before running this script
-- Example: psql -U postgres -d dbmovie -f pg_cine.sql
 
SET CLIENT_ENCODING = 'UTF-8';

create schema movie authorization movie;

set role movie;

-- DDL : tables, views
\i ddl/pg_dbmovie_ddl.sql
-- DATA: psql is in no transaction mode by default
\i dml/data_stars.sql;
\i dml/data_movies.sql;
\i dml/data_play.sql;
-- readjust sequences
select setval('stars_id_seq', max(id)) from stars;
select setval('movies_id_seq', max(id)) from movies;