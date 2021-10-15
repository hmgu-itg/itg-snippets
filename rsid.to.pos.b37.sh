#!/bin/bash
wget -O- --no-check-certificate -q "https://grch37.rest.ensembl.org/variation/human/${1}?content-type=application/json" | jq -r '.mappings[0] | "chr" + .seq_region_name + ":" + (.start|tostring)'
