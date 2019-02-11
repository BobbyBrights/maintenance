# Kathmandu Ecommerce Maintenance Page(s)

The `index.html` page(s) in this repository should be uploaded to the relevant
`s3` bucket.

## Prerequisites

The below assumes that an up-to-date copy of `awscli` is installed and
configured.

## Setup

To setup the appropriate configuration on the following `s3` buckets:

- s3://www.kathmandu.co.nz
- s3://www.kathmandu.com.au
- s3://www.kathmandu.co.uk
- s3://www.kathmanduoutdoor.com

simply run `./bin/setup.sh` from the project root. This'll enable 'Static
Website Hosting' and add a public bucket policy (defined in `/config/…`).

## Deploy

To deploy the site(s) run `./bin/deploy.sh` from the project root.

## Teardown

If the static websites are no longer required, i.e. maintenance mode is
complete, run `./bin/teardown.sh` from the project root.
