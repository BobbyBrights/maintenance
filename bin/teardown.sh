#!/usr/bin/env bash

# Remove static website hosting from bucket
echo -e "disabling Admin website configuration\n…"
aws s3api delete-bucket-website --bucket master.kathmandu.co.nz
echo -e "disabling NZ website configuration\n…"
aws s3api delete-bucket-website --bucket www.kathmandu.co.nz
echo -e "disabling AU website configuration\n…"
aws s3api delete-bucket-website --bucket www.kathmandu.com.au
echo -e "disabling UK website configuration\n…"
aws s3api delete-bucket-website --bucket www.kathmandu.co.uk
echo -e "disabling US website configuration\n…"
aws s3api delete-bucket-website --bucket www.kathmanduoutdoor.com

# Delete bucket policy
echo -e "deleting Admin bucket policy\n…"
aws s3api delete-bucket-policy --bucket master.kathmandu.co.nz
echo -e "deleting NZ bucket policy\n…"
aws s3api delete-bucket-policy --bucket www.kathmandu.co.nz
echo -e "deleting AU bucket policy\n…"
aws s3api delete-bucket-policy --bucket www.kathmandu.com.au
echo -e "deleting UK bucket policy\n…"
aws s3api delete-bucket-policy --bucket www.kathmandu.co.uk
echo -e "deleting US bucket policy\n…"
aws s3api delete-bucket-policy --bucket www.kathmanduoutdoor.com
