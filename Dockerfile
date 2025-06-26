FROM postgres:16

# Copiamos el .sql dentro del contenedor
COPY strapi_db_backup.sql /strapi_db_backup.sql

# Ejecutamos el .sql al arrancar, contra la base de datos existente
CMD ["sh", "-c", "PGPASSWORD=$PGPASSWORD psql -h $PGHOST -U $PGUSER -d $PGDATABASE -p $PGPORT -f /strapi_db_backup.sql"]
