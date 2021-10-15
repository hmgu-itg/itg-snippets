#!/bin/bash
gene=$1
ret=$(wget -q -O- --no-check-certificate "https://grch37.rest.ensembl.org/lookup/symbol/homo_sapiens/$gene?content-type=application/json;expand=0" | jq -r '.seq_region_name +" " + (.start|tostring) + " " + (.["end"] | tostring)')

if [ -z "$ret" ]; then
>&2 echo Error: Gene $gene not found;
else
echo $ret
fi
