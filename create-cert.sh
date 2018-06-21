#!/bin/sh

set -e
set -x

counter=2
for var in "$@"
do
    echo "DNS.$counter = $var" >> /app/cert-defaults.txt
    counter=$((counter+1))
done

cat /app/cert-defaults.txt

openssl req -x509 -days 730 -nodes -out /out/cert.pem -keyout /out/key.pem -config /app/cert-defaults.txt
