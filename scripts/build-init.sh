#!/usr/bin/env bash

# Absolutely stellar work on the documentation Brandon et al :)
# https://phg.maizegenetics.net/build_and_load/

# Initialize TileDB
phg initdb                    \
    --db-path tiledb          \
    --gvcf-anchor-gap 1000000 \
    --hvcf-anchor-gap 1000

# Update FASTA headers with sample information
mkdir -p data/fastas
phg prepare-assemblies                       \
    --keyfile prepare_assemblies_keyfile.txt \
    --output-dir data/fastas                 \
    --threads 32

# Compress FASTA files
phg agc-compress                                                            \
    --db-path tiledb                                                        \
    --reference-file data/reference/GCF_003254395.2_Amel_HAv3.1_genomic.fna \
    --fasta-list assemblies.txt

# Create BED file from GFF for reference range coordinates
phg create-ranges                                                           \
    --reference-file data/reference/GCF_003254395.2_Amel_HAv3.1_genomic.fna \
    --gff data/reference/genomic.gff                                        \
    --boundary gene                                                         \
    --pad 500                                                               \
    --range-min-size 500                                                    \
    -o bee.bed