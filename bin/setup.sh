#!/usr/bin/env bash

# Configure buckets for website hosting
echo -e "enabling NZ static website\n"
aws s3 website s3://www.kathmandu.co.nz/ --index-document "index.html"
echo -e "enabling AU static website\n"
aws s3 website s3://www.kathmandu.com.au/ --index-document "index.html"
echo -e "enabling UK static website\n"
aws s3 website s3://www.kathmandu.co.uk/ --index-document "index.html"
echo -e "enabling US static website\n"
aws s3 website s3://www.kathmanduoutdoor.com/ --index-document "index.html"

# Configure bucket policy
echo -e "putting NZ bucket policy\n"
aws s3api put-bucket-policy --bucket www.kathmandu.co.nz --policy file://config/nz_policy.json
echo -e "putting AU bucket policy\n"
aws s3api put-bucket-policy --bucket www.kathmandu.com.au --policy file://config/au_policy.json
echo -e "putting UK bucket policy\n"
aws s3api put-bucket-policy --bucket www.kathmandu.co.uk --policy file://config/uk_policy.json
echo -e "putting US bucket policy\n"
aws s3api put-bucket-policy --bucket www.kathmanduoutdoor.com --policy file://config/us_policy.json
