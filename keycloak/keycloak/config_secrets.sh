#!/bin/bash

openssl req -x509 -newkey rsa:2048 -nodes -keyout tls.key -out tls.crt -days 365 -subj "/CN=www.example.com"
CERT=$(base64 -w0 < tls.crt)
KEY=$(base64 -w0 < tls.key)
cat 3-secret.yaml | sed -e "s/<add-tls-cert-here>/${CERT}/" -e "s/<add-tls-key-here>/${KEY}/" > 3-secret_updated.yaml
sleep 5

