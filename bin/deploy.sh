#!/usr/bin/env bash

# Admin
aws s3 sync public/ s3://master.kathmandu.co.nz/ --delete --exclude "index.html" --exclude ".DS_Store"
aws s3 mv s3://master.kathmandu.co.nz/index_blank.html s3://master.kathmandu.co.nz/index.html

# ANZUK
aws s3 sync public/ s3://www.kathmandu.co.nz/ --delete --exclude "index_blank.html" --exclude ".DS_Store"
aws s3 sync public/ s3://www.kathmandu.com.au/ --delete --exclude "index_blank.html" --exclude ".DS_Store"
aws s3 sync public/ s3://www.kathmandu.co.uk/ --delete --exclude "index_blank.html" --exclude ".DS_Store"

# US site
aws s3 sync public/ s3://www.kathmanduoutdoor.com/ --delete --exclude "index.html" --exclude ".DS_Store"
aws s3 mv s3://www.kathmanduoutdoor.com/index_blank.html s3://www.kathmanduoutdoor.com/index.html
