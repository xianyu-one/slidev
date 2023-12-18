FROM node:18-alpine

COPY entrypoint.sh /entrypoint.sh

WORKDIR /slidev

RUN chmod +x /entrypoint.sh 

ENTRYPOINT ["/entrypoint.sh"]

HEALTHCHECK --interval=30s --timeout=5s --retries=20 \
  CMD wget --quiet --tries=1 --spider http://127.0.0.1:3030 || exit 1