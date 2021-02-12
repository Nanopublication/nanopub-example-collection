#!/usr/bin/env bash

cd "$(dirname "$0")"

np op filter ../../examples/*/* --out-format nq > temp.nq
np op extract -a -d --out-format nq temp.nq | awk '{print $2}' | sort | uniq -c | sort -nr > assertion-pred-stats.txt
np op extract -p -d --out-format nq temp.nq | awk '{print $2}' | sort | uniq -c | sort -nr > prov-pred-stats.txt
np op extract -i -d --out-format nq temp.nq | awk '{print $2}' | sort | uniq -c | sort -nr > pubinfo-pred-stats.txt
rm temp.nq
