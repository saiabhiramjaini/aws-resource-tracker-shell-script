#!/bin/bash

####################################
#
# Author: Jaini Sai Abhiram
# Date: 24/01/2025
# 
# Version: v1
# 
# This script will report AWS resources usage
#
####################################


# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users

set -x
set -e
set -o pipefail

# list of s3 buckets
echo "Print list of S3 buckets"
aws s3 ls

# list of EC2 instances and extracting their IDs
echo "Print list of EC2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

# list lambda
echo "Print list of lambda functions"
aws lambda list-functions

# list IAM users
echo "Print list of IAM users"
aws iam list-users



