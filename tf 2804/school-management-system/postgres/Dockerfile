FROM postgres:latest

COPY init.sql /docker-entrypoint-initdb.d/
COPY postgres.conf /etc/postgresql/postgresql.conf

RUN chmod 600 /etc/postgresql/postgresql.conf

EXPOSE 5432

CMD ["postgres", "-c", "config_file=/etc/postgresql/postgresql.conf"]