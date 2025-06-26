FROM postgres:16

COPY strapi_db_backup.sql /docker-entrypoint-initdb.d/
