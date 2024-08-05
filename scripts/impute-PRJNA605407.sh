#!/usr/bin/env bash

# https://phg.maizegenetics.net/imputation/

# Export hVCF data
mkdir -p data/hvcf
phg export-vcf                                                           \
    --db-path tiledb                                                     \
    --dataset-type hvcf                                                  \
    --sample-names 'Amel_4.5,ASM1384124v2,ASM1932182v1,INRA_AMelMel_1.1' \
    -o data/hvcf

# Index k-mers
phg build-kmer-index \
    --db-path tiledb \
    --hvcf-dir data/hvcf

# Map short reads
mkdir -p map/PRJNA605407
phg map-kmers                              \
    --hvcf-dir data/hvcf                   \
    --kmer-index data/hvcf/kmerIndex.txt   \
    --key-file map_PRJNA605407_keyfile.txt \
    --threads 32                           \
    --output-dir map/PRJNA605407

# Find paths
mkdir -p impute/PRJNA605407/hvcf
phg find-paths                                    \
    --path-keyfile path_PRJNA605407_keyfile.txt   \
    --hvcf-dir data/hvcf                          \
    --reference-genome data/fastas/Amel_HAv3.1.fa \
    --path-type haploid                           \
    --threads 32                                  \
    --output-dir impute/PRJNA605407/hvcf

# Get SNPs from imputed hVCFs
mkdir -p impute/PRJNA605407/gvcf
phg hvcf2gvcf                                   \
    --hvcf-dir impute/PRJNA605407/hvcf          \
    --db-path tiledb                            \
    --reference-file data/fastas/Amel_HAv3.1.fa \
    --output-dir impute/PRJNA605407/gvcf
