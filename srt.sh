# !/bin/bash

cat data.txt | awk '{ a[$3]++ } END { for (n in a) print n, a[n] } ' | sort -nrk2 | head -n 3
