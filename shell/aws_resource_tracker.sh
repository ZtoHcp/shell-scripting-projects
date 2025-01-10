#!/usr/bin/env bash

################
# This script will report the AWS resource usage using aws cli. Below are the resources being tracked.
#
# AWS S3
# AWS EC2
# AWS LAMBDA
# AWS IAM Users
#
# Optional:
# Install aws cli in computer
# Run aws configure to setup
#
#################

#debug mode
set -x >> /tmp/resource_tracker.log

# Create a file for logs
cd /tmp
touch resource_tracker.log

# list s3 buckets
echo "Print list of S3 buckets"
aws s3 ls >> /tmp/resource_tracker.log

# list ec2 instances
echo "Print list of EC2"
aws ec2 describe-instances >> /tmp/resource_tracker.log

# list aws lambda functions
echo "Print list of lambda"
aws lambda list-functions >> /tmp/resource_tracker.log

# list IAM users
echo "Print list of IAM users"
aws iam list-users >> /tmp/resource_tracker.log

# using jq - json parser to obtain only instance name
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> /tmp/resource_tracker.log
