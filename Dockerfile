# docker run --rm -it -e COUCHDB_USER=admin -e COUCHDB_PASSWORD=password -v /path/to/local.ini:/opt/couchdb/etc/local.ini -p 5984:5984 couchdb

FROM couchdb

ENV COUCHDB_USER=${COUCHDB_USER:-admin}
ENV COUCHDB_PASSWORD=${COUCHDB_PASSWORD:-password}

COPY local.ini /opt/couchdb/etc/local.ini

EXPOSE 5984

CMD ["couchdb"]
