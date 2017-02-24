#!/bin/sh

BUCKET="reasoncruel"
PUBLIC_DIR="public"

if [ `grep AKIAIYWZJCF ~/.aws/credentials  | wc -l` -eq 1 ]; then
  aws s3 sync ${PUBLIC_DIR} s3://${BUCKET}
else
  echo "confirm your aws credentials."
fi
