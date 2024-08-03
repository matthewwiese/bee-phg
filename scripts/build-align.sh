#!/usr/bin/env bash

# Absolutely stellar work on the documentation Brandon et al :)
# https://phg.maizegenetics.net/build_and_load/

# Align assemblies
mkdir -p data/align
phg align-assemblies                                                        \
    --gff data/reference/genomic.gff                                        \
    --reference-file data/reference/GCF_003254395.2_Amel_HAv3.1_genomic.fna \
    --assembly-file-list assemblies.txt                                     \
    -o data/align
