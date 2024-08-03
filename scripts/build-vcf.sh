#!/usr/bin/env bash

# Absolutely stellar work on the documentation Brandon et al :)
# https://phg.maizegenetics.net/build_and_load/

mkdir -p data/vcf
# Create HVCF data from ref
phg create-ref-vcf                                                          \
    --db-path tiledb                                                        \
    --bed bee.bed                                                           \
    --reference-file data/reference/GCF_003254395.2_Amel_HAv3.1_genomic.fna \
    --reference-name Amel_HAv3.1

# Create HVCF and GVCF data from assembly alignments against ref
phg create-maf-vcf                                                          \
    --db-path tiledb                                                        \
    --bed bee.bed                                                           \
    --reference-file data/reference/GCF_003254395.2_Amel_HAv3.1_genomic.fna \
    --maf-dir data/align                                                    \
    -o data/vcf

# Load VCFs into TileDB
phg load-vcf           \
    --vcf-dir data/vcf \
    --db-path tiledb   \
    --threads 32
