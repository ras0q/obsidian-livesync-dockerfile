# https://github.com/vrtmrz/obsidian-livesync/blob/main/docs/setup_own_server.md

FROM couchdb

ENV COUCHDB_USER=${COUCHDB_USER:-admin}
ENV COUCHDB_PASSWORD=${COUCHDB_PASSWORD:-password}

COPY local.ini /opt/couchdb/etc/local.ini

EXPOSE 5984

CMD ["couchdb"]
