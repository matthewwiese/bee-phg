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
# NOTE: If you run into the following error:
#           Exception in thread "main" java.lang.IllegalArgumentException: Error running ProcessBuilder for agc create or append: Error running ProcessBuilder to compress agc files: 132
#       It's likely that agc was compiled with an instruction set that your CPU does not support
#       Compile agc from source (https://github.com/refresh-bio/agc) and adjust your PATH so that your own compiled agc is used instead
phg agc-compress                                \
    --db-path tiledb                            \
    --reference-file data/fastas/Amel_HAv3.1.fa \
    --fasta-list assemblies.txt

# Create BED file from GFF for reference range coordinates
phg create-ranges                               \
    --reference-file data/fastas/Amel_HAv3.1.fa \
    --gff data/reference/genomic.gff            \
    --boundary gene                             \
    --pad 500                                   \
    --range-min-size 500                        \
    -o bee.bed