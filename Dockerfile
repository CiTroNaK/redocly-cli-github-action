FROM redocly/cli:1.19.0

COPY LICENSE.md README.md /

COPY docker-entrypoint.sh /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
