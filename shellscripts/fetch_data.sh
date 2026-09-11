#!/bin/bash

echo "fetching transkriptions from data_repo"
rm -rf data/
curl -LO https://github.com/csae8092/atheism-data/archive/refs/heads/main.zip
unzip main

mv ./atheism-data-main/data/ .

rm main.zip
rm -rf ./atheism-data-main

echo "fetch imprint"
./shellscripts/dl_imprint.sh
