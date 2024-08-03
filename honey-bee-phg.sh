#!/usr/bin/env bash

# NOTE: Run this from the root of this repository

# 1. Download reference and additional chromosome-level assemblies
./scripts/download-ref-asm.sh

# 2. Rename chromosomes to be consistent across assemblies
./scripts/rename-chromosomes.sh

# 3.A. Build the PHG: Initialization/Setup
./scripts/build-init.sh

# 3.B. Build the PHG: Alignment with AnchorWave
./scripts/build-align.sh

# 3.C. Build the PHG: Create and Load VCFs into TileDB
./scripts/build-vcf.sh
