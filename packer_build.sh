#!/bin/bash


rm -r vendor

bundle exec berks install --path vendor/cookbooks

packer build \
	-var "account_id=${AWS_ACCOUNT_ID}" \
	-var "aws_acces_key_id=${AWS_ACCESS_KEY_ID}" \
	-var "aws_secret_key=${AWS_SECRET_ACCESS_KEY}" \
	-var "x509_cert_path=${AWS_X509_CERT_PATH}" \
	-var "x509_key_path=${AWS_X509_KEY_PATH}"
	-only=amazon-instance packer.json