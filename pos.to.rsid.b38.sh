#!/bin/bash
chr=$1
pos=$2
ret=$(wget -O- -q --no-check-certificate "https://rest.ensembl.org/overlap/region/human/${chr}:${pos}:${pos}?feature=variation;content-type=application/json" | jq -r '.[] | .id + " "+(.alleles | join("/"))')
if [ -z "$ret" ]; then
>&2 echo Error: no RSid corresponds to position ${chr}:$pos
else
echo $ret
fi
