FROM docker:18.09.6

RUN apk update && \
    apk add -U openssl ca-certificates wget unzip

RUN cd /usr/local/share/ca-certificates; \
    wget -q https://github.com/hacdescm/certs/archive/master.zip; \
    unzip -j master.zip; \
    rm master.zip

RUN update-ca-certificates
