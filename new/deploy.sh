#!/bin/sh

# BUCKET="new-cruel-reason"
BUCKET="cruel-reason.net"
PUBLIC_DIR="dist"

if [ `grep IYWZJCF ~/.aws/credentials  | wc -l` -eq 1 ]; then
  aws s3 sync ${PUBLIC_DIR} s3://${BUCKET} --delete
else
  echo "confirm your aws credentials."
fi
