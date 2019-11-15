
FROM citusdata/citus:8.3.2
COPY wait-for-postgres.sh /usr/bin/
RUN chmod 755 /usr/bin/wait-for-postgres.sh
ENTRYPOINT  ["wait-for-postgres.sh", "master", "/docker-entrypoint.sh"]
