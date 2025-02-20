#!/bin/sh
git config --global http.proxy "http://172.18.55.61:20171/"
git config --global https.proxy "http://172.18.55.61:20171/"
git pull
git add .
LENGTH=8
RANDOM_STRING=$(date +%s%N | md5sum | head -c $LENGTH)
git commit -m "$RANDOM_STRING"
git pull
git push
git config --global --unset http.proxy
git config --global --unset https.proxy