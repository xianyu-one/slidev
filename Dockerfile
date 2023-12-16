FROM node:18-alpine

COPY entrypoint.sh /entrypoint.sh

WORKDIR /slidev

RUN chmod +x /entrypoint.sh 

ENTRYPOINT ["/entrypoint.sh"]