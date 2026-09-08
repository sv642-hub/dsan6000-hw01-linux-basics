aws s3 ls s3://dsan6000-wikipedia/hourly/
rm -f data/*.csv
aws s3 sync s3://dsan6000-wikipedia/hourly/ ./data/
ls data/*.csv
