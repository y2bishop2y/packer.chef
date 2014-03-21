#!/bin/bash


# rm -r vendor

# bundle exec berks install --path vendor/cookbooks

packer build -debug \
	-var "aws_account_id=${AWS_ACCOUNT_ID}" \
	-var "aws_access_key_id=${AWS_ACCESS_KEY_ID}" \
	-var "aws_secret_key=${AWS_SECRET_ACCESS_KEY}" \
	-var "aws_region=${AWS_REGION}" \
	-var "aws_source_ami=${AWS_AMI}" \
	-var "aws_security_group_id=${AWS_SECURITY_GROUP_ID}" \
	-var "aws_instance_type=${AWS_INSTANCE_TYPE}" \
	-only=amazon-ebs packer.amazon-ebs.json