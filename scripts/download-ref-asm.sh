#!/usr/bin/env bash

cd data

mkdir -p reference
mkdir -p assemblies

# https://www.ncbi.nlm.nih.gov/datasets/genome/GCF_003254395.2/
datasets download genome accession GCF_003254395.2 --include gff3,genome --filename GCF_003254395.2.zip
unzip -j GCF_003254395.2.zip ncbi_dataset/data/GCF_003254395.2/GCF_003254395.2_Amel_HAv3.1_genomic.fna \
                             ncbi_dataset/data/GCF_003254395.2/genomic.gff -d reference

# https://www.ncbi.nlm.nih.gov/datasets/genome/GCA_019321825.1/
datasets download genome accession GCA_019321825.1 --include genome --filename GCA_019321825.1.zip
unzip -j GCA_019321825.1.zip ncbi_dataset/data/GCA_019321825.1/GCA_019321825.1_ASM1932182v1_genomic.fna -d assemblies

# https://www.ncbi.nlm.nih.gov/datasets/genome/GCA_013841245.2/
datasets download genome accession GCA_013841245.2 --include genome --filename GCA_013841245.2.zip
unzip -j GCA_013841245.2.zip ncbi_dataset/data/GCA_013841245.2/GCA_013841245.2_ASM1384124v2_genomic.fna -d assemblies

# https://www.ncbi.nlm.nih.gov/datasets/genome/GCA_003314205.2/
datasets download genome accession GCA_003314205.2 --include genome --filename GCA_003314205.2.zip
unzip -j GCA_003314205.2.zip ncbi_dataset/data/GCA_003314205.2/GCA_003314205.2_INRA_AMelMel_1.1_genomic.fna -d assemblies

# https://www.ncbi.nlm.nih.gov/datasets/genome/GCA_000819425.1/
datasets download genome accession GCA_000819425.1 --include genome --filename GCA_000819425.1.zip
unzip -j GCA_000819425.1.zip ncbi_dataset/data/GCA_000819425.1/GCA_000819425.1_Ami_v1_genomic.fna -d assemblies

# https://www.ncbi.nlm.nih.gov/datasets/genome/GCA_013841205.1/
datasets download genome accession GCA_013841205.1 --include genome --filename GCA_013841205.1.zip
unzip -j GCA_013841205.1.zip ncbi_dataset/data/GCA_013841205.1/GCA_013841205.1_ASM1384120v1_genomic.fna -d assemblies

# https://www.ncbi.nlm.nih.gov/datasets/genome/GCF_000002195.4/
datasets download genome accession GCF_000002195.4 --include genome --filename GCF_000002195.4.zip
unzip -j GCF_000002195.4.zip ncbi_dataset/data/GCF_000002195.4/GCF_000002195.4_Amel_4.5_genomic.fna -d assemblies
