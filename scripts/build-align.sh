#!/usr/bin/env bash

# Absolutely stellar work on the documentation Brandon et al :)
# https://phg.maizegenetics.net/build_and_load/

# Align assemblies
mkdir -p data/align
phg align-assemblies                                                             \
    --gff data/reference/genomic.gff                                             \
    --reference-file data/reference/GCF_003254395.2_Amel_HAv3.1_genomic.fna      \
    --assembly-file data/assemblies/GCA_019321825.1_ASM1932182v1_genomic.fna     \
    --assembly-file data/assemblies/GCA_013841245.2_ASM1384124v2_genomic.fna     \
    --assembly-file data/assemblies/GCA_003314205.2_INRA_AMelMel_1.1_genomic.fna \
    --assembly-file data/assemblies/GCF_000002195.4_Amel_4.5_genomic.fna         \
    -o data/align
