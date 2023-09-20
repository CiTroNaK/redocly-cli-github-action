FROM redocly/cli:1.0.2

COPY LICENSE.md README.md /

COPY docker-entrypoint.sh /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
