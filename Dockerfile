FROM alpine

RUN apk update && \
    apk add --no-cache openssl && \
    rm -rf /var/cache/apk/* && \
    mkdir /out

WORKDIR /app

COPY cert-defaults.txt .
COPY create-cert.sh .

ENTRYPOINT ["/app/create-cert.sh"]
