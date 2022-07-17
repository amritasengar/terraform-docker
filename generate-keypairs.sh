#!/usr/bin/env bash


openssl genrsa -out private_key.pem 2048    # generate an RSA private key of 2048 bits

openssl rsa -pubout -in private_key.pem -out public_key.pem 
