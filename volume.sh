#!/bin/sh
ls -l source/ | grep .md | sed -e s/\.md// | awk '{print $9 "," $5}' > volume.csv

