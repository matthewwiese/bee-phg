#!/usr/bin/env bash

# Absolutely stellar work on the documentation Brandon et al :)
# https://phg.maizegenetics.net/build_and_load/

# Initialize TileDB
phg initdb                    \
    --db-path tiledb          \
    --gvcf-anchor-gap 1000000 \
    --hvcf-anchor-gap 1000

# Create BED file from GFF for reference range coordinates
phg create-ranges                                                           \
    --reference-file data/reference/GCF_003254395.2_Amel_HAv3.1_genomic.fna \
    --gff data/reference/genomic.gff                                        \
    --boundary gene                                                         \
    --pad 500                                                               \
    --range-min-size 500                                                    \
    -o bee.bed

# Update FASTA headers with sample information
mkdir -p data/fastas
phg prepare-assemblies                       \
    --keyfile prepare_assemblies_keyfile.txt \
    --output-dir data/fastas                 \
    --threads 10

# Align assemblies
mkdir -p data/align
phg align-assemblies                                                             \
    --gff data/reference/genomic.gff                                             \
    --reference-file data/reference/GCF_003254395.2_Amel_HAv3.1_genomic.fna      \
    --assembly-file data/assemblies/GCA_019321825.1_ASM1932182v1_genomic.fna     \
    --assembly-file data/assemblies/GCA_013841245.2_ASM1384124v2_genomic.fna     \
    --assembly-file data/assemblies/GCA_003314205.2_INRA_AMelMel_1.1_genomic.fna \
    --assembly-file data/assemblies/GCA_000819425.1_Ami_v1_genomic.fna           \
    --assembly-file data/assemblies/GCA_013841205.1_ASM1384120v1_genomic.fna     \
    --assembly-file data/assemblies/GCF_000002195.4_Amel_4.5_genomic.fna         \
    -o data/align

# Compress FASTA files
phg agc-compress                                                            \
    --db-path tiledb                                                        \
    --reference-file data/reference/GCF_003254395.2_Amel_HAv3.1_genomic.fna \
    --fasta-list assemblies.txt

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
phg load-vcf         \
    --vcf data/vcf   \
    --db-path tiledb \
    --threads 10