#!/usr/bin/env bash

cd "$(dirname "$0")"

np op filter ../../examples/*/* --out-format nq > temp.nq
np op extract -i -d --out-format nq temp.nq | awk '{print $2}' | sort | uniq -c | sort -nr > stats.txt
rm temp.nq
