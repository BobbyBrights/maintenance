#!/usr/bin/env bash

# ANZUK
aws s3 sync public/ s3://www.kathmandu.co.nz/ --delete --exclude "index_us.html" --exclude ".DS_Store"
aws s3 sync public/ s3://www.kathmandu.com.au/ --delete --exclude "index_us.html" --exclude ".DS_Store"
aws s3 sync public/ s3://www.kathmandu.co.uk/ --delete --exclude "index_us.html" --exclude ".DS_Store"

# US site
aws s3 sync public/ s3://www.kathmanduoutdoor.com/ --delete --exclude "index.html" --exclude ".DS_Store"
aws s3 mv s3://www.kathmanduoutdoor.com/index_us.html s3://www.kathmanduoutdoor.com/index.html
