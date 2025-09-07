FROM postgres
ENV POSTGRES_PASSWORD lafosse
ENV POSTGRES_DB movies
COPY movies.sql /docker-entrypoint-initdb.d/
