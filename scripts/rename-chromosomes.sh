#!/usr/bin/env bash

# Rename chromosomes to be consistent between reference and queries

cd data

# Amel_HAv3.1 - Reference FASTA
sed -i 's/>NC_037638\.1\sApis\smellifera\sstrain\sDH4\slinkage\sgroup\sLG1.*/>chr1/g'   reference/GCF_003254395.2_Amel_HAv3.1_genomic.fna
sed -i 's/>NC_037639\.1\sApis\smellifera\sstrain\sDH4\slinkage\sgroup\sLG2.*/>chr2/g'   reference/GCF_003254395.2_Amel_HAv3.1_genomic.fna
sed -i 's/>NC_037640\.1\sApis\smellifera\sstrain\sDH4\slinkage\sgroup\sLG3.*/>chr3/g'   reference/GCF_003254395.2_Amel_HAv3.1_genomic.fna
sed -i 's/>NC_037641\.1\sApis\smellifera\sstrain\sDH4\slinkage\sgroup\sLG4.*/>chr4/g'   reference/GCF_003254395.2_Amel_HAv3.1_genomic.fna
sed -i 's/>NC_037642\.1\sApis\smellifera\sstrain\sDH4\slinkage\sgroup\sLG5.*/>chr5/g'   reference/GCF_003254395.2_Amel_HAv3.1_genomic.fna
sed -i 's/>NC_037643\.1\sApis\smellifera\sstrain\sDH4\slinkage\sgroup\sLG6.*/>chr6/g'   reference/GCF_003254395.2_Amel_HAv3.1_genomic.fna
sed -i 's/>NC_037644\.1\sApis\smellifera\sstrain\sDH4\slinkage\sgroup\sLG7.*/>chr7/g'   reference/GCF_003254395.2_Amel_HAv3.1_genomic.fna
sed -i 's/>NC_037645\.1\sApis\smellifera\sstrain\sDH4\slinkage\sgroup\sLG8.*/>chr8/g'   reference/GCF_003254395.2_Amel_HAv3.1_genomic.fna
sed -i 's/>NC_037646\.1\sApis\smellifera\sstrain\sDH4\slinkage\sgroup\sLG9.*/>chr9/g'   reference/GCF_003254395.2_Amel_HAv3.1_genomic.fna
sed -i 's/>NC_037647\.1\sApis\smellifera\sstrain\sDH4\slinkage\sgroup\sLG10.*/>chr10/g' reference/GCF_003254395.2_Amel_HAv3.1_genomic.fna
sed -i 's/>NC_037648\.1\sApis\smellifera\sstrain\sDH4\slinkage\sgroup\sLG11.*/>chr11/g' reference/GCF_003254395.2_Amel_HAv3.1_genomic.fna
sed -i 's/>NC_037649\.1\sApis\smellifera\sstrain\sDH4\slinkage\sgroup\sLG12.*/>chr12/g' reference/GCF_003254395.2_Amel_HAv3.1_genomic.fna
sed -i 's/>NC_037650\.1\sApis\smellifera\sstrain\sDH4\slinkage\sgroup\sLG13.*/>chr13/g' reference/GCF_003254395.2_Amel_HAv3.1_genomic.fna
sed -i 's/>NC_037651\.1\sApis\smellifera\sstrain\sDH4\slinkage\sgroup\sLG14.*/>chr14/g' reference/GCF_003254395.2_Amel_HAv3.1_genomic.fna
sed -i 's/>NC_037652\.1\sApis\smellifera\sstrain\sDH4\slinkage\sgroup\sLG15.*/>chr15/g' reference/GCF_003254395.2_Amel_HAv3.1_genomic.fna
sed -i 's/>NC_037653\.1\sApis\smellifera\sstrain\sDH4\slinkage\sgroup\sLG16.*/>chr16/g' reference/GCF_003254395.2_Amel_HAv3.1_genomic.fna

# Amel_HAv3.1 - Reference GFF
sed -i 's/^NC_037638\.1/chr1/g'  reference/genomic.gff
sed -i 's/^NC_037639\.1/chr2/g'  reference/genomic.gff
sed -i 's/^NC_037640\.1/chr3/g'  reference/genomic.gff
sed -i 's/^NC_037641\.1/chr4/g'  reference/genomic.gff
sed -i 's/^NC_037642\.1/chr5/g'  reference/genomic.gff
sed -i 's/^NC_037643\.1/chr6/g'  reference/genomic.gff
sed -i 's/^NC_037644\.1/chr7/g'  reference/genomic.gff
sed -i 's/^NC_037645\.1/chr8/g'  reference/genomic.gff
sed -i 's/^NC_037646\.1/chr9/g'  reference/genomic.gff
sed -i 's/^NC_037647\.1/chr10/g' reference/genomic.gff
sed -i 's/^NC_037648\.1/chr11/g' reference/genomic.gff
sed -i 's/^NC_037649\.1/chr12/g' reference/genomic.gff
sed -i 's/^NC_037650\.1/chr13/g' reference/genomic.gff
sed -i 's/^NC_037651\.1/chr14/g' reference/genomic.gff
sed -i 's/^NC_037652\.1/chr15/g' reference/genomic.gff
sed -i 's/^NC_037653\.1/chr16/g' reference/genomic.gff

# ASM1932182v1
sed -i 's/>CM033155\.1\sApis\smellifera\sligustica\sbreed\sZhejiang\sRoyal\sJelly\sbee\slinkage\sgroup\sLG1.*/>chr1/g'   assemblies/GCA_019321825.1_ASM1932182v1_genomic.fna
sed -i 's/>CM033156\.1\sApis\smellifera\sligustica\sbreed\sZhejiang\sRoyal\sJelly\sbee\slinkage\sgroup\sLG2.*/>chr2/g'   assemblies/GCA_019321825.1_ASM1932182v1_genomic.fna
sed -i 's/>CM033157\.1\sApis\smellifera\sligustica\sbreed\sZhejiang\sRoyal\sJelly\sbee\slinkage\sgroup\sLG3.*/>chr3/g'   assemblies/GCA_019321825.1_ASM1932182v1_genomic.fna
sed -i 's/>CM033158\.1\sApis\smellifera\sligustica\sbreed\sZhejiang\sRoyal\sJelly\sbee\slinkage\sgroup\sLG4.*/>chr4/g'   assemblies/GCA_019321825.1_ASM1932182v1_genomic.fna
sed -i 's/>CM033159\.1\sApis\smellifera\sligustica\sbreed\sZhejiang\sRoyal\sJelly\sbee\slinkage\sgroup\sLG5.*/>chr5/g'   assemblies/GCA_019321825.1_ASM1932182v1_genomic.fna
sed -i 's/>CM033160\.1\sApis\smellifera\sligustica\sbreed\sZhejiang\sRoyal\sJelly\sbee\slinkage\sgroup\sLG6.*/>chr6/g'   assemblies/GCA_019321825.1_ASM1932182v1_genomic.fna
sed -i 's/>CM033161\.1\sApis\smellifera\sligustica\sbreed\sZhejiang\sRoyal\sJelly\sbee\slinkage\sgroup\sLG7.*/>chr7/g'   assemblies/GCA_019321825.1_ASM1932182v1_genomic.fna
sed -i 's/>CM033162\.1\sApis\smellifera\sligustica\sbreed\sZhejiang\sRoyal\sJelly\sbee\slinkage\sgroup\sLG8.*/>chr8/g'   assemblies/GCA_019321825.1_ASM1932182v1_genomic.fna
sed -i 's/>CM033163\.1\sApis\smellifera\sligustica\sbreed\sZhejiang\sRoyal\sJelly\sbee\slinkage\sgroup\sLG9.*/>chr9/g'   assemblies/GCA_019321825.1_ASM1932182v1_genomic.fna
sed -i 's/>CM033164\.1\sApis\smellifera\sligustica\sbreed\sZhejiang\sRoyal\sJelly\sbee\slinkage\sgroup\sLG10.*/>chr10/g' assemblies/GCA_019321825.1_ASM1932182v1_genomic.fna
sed -i 's/>CM033165\.1\sApis\smellifera\sligustica\sbreed\sZhejiang\sRoyal\sJelly\sbee\slinkage\sgroup\sLG11.*/>chr11/g' assemblies/GCA_019321825.1_ASM1932182v1_genomic.fna
sed -i 's/>CM033166\.1\sApis\smellifera\sligustica\sbreed\sZhejiang\sRoyal\sJelly\sbee\slinkage\sgroup\sLG12.*/>chr12/g' assemblies/GCA_019321825.1_ASM1932182v1_genomic.fna
sed -i 's/>CM033167\.1\sApis\smellifera\sligustica\sbreed\sZhejiang\sRoyal\sJelly\sbee\slinkage\sgroup\sLG13.*/>chr13/g' assemblies/GCA_019321825.1_ASM1932182v1_genomic.fna
sed -i 's/>CM033168\.1\sApis\smellifera\sligustica\sbreed\sZhejiang\sRoyal\sJelly\sbee\slinkage\sgroup\sLG14.*/>chr14/g' assemblies/GCA_019321825.1_ASM1932182v1_genomic.fna
sed -i 's/>CM033169\.1\sApis\smellifera\sligustica\sbreed\sZhejiang\sRoyal\sJelly\sbee\slinkage\sgroup\sLG15.*/>chr15/g' assemblies/GCA_019321825.1_ASM1932182v1_genomic.fna
sed -i 's/>CM033170\.1\sApis\smellifera\sligustica\sbreed\sZhejiang\sRoyal\sJelly\sbee\slinkage\sgroup\sLG16.*/>chr16/g' assemblies/GCA_019321825.1_ASM1932182v1_genomic.fna

# ASM1384124v2
sed -i 's/>CM034062\.1\sApis\smellifera\scarnica\sisolate\sJilin01\schromosome\s1.*/>chr1/g'   assemblies/GCA_013841245.2_ASM1384124v2_genomic.fna
sed -i 's/>CM034063\.1\sApis\smellifera\scarnica\sisolate\sJilin01\schromosome\s2.*/>chr2/g'   assemblies/GCA_013841245.2_ASM1384124v2_genomic.fna
sed -i 's/>CM034064\.1\sApis\smellifera\scarnica\sisolate\sJilin01\schromosome\s3.*/>chr3/g'   assemblies/GCA_013841245.2_ASM1384124v2_genomic.fna
sed -i 's/>CM034065\.1\sApis\smellifera\scarnica\sisolate\sJilin01\schromosome\s4.*/>chr4/g'   assemblies/GCA_013841245.2_ASM1384124v2_genomic.fna
sed -i 's/>CM034066\.1\sApis\smellifera\scarnica\sisolate\sJilin01\schromosome\s5.*/>chr5/g'   assemblies/GCA_013841245.2_ASM1384124v2_genomic.fna
sed -i 's/>CM034067\.1\sApis\smellifera\scarnica\sisolate\sJilin01\schromosome\s6.*/>chr6/g'   assemblies/GCA_013841245.2_ASM1384124v2_genomic.fna
sed -i 's/>CM034068\.1\sApis\smellifera\scarnica\sisolate\sJilin01\schromosome\s7.*/>chr7/g'   assemblies/GCA_013841245.2_ASM1384124v2_genomic.fna
sed -i 's/>CM034069\.1\sApis\smellifera\scarnica\sisolate\sJilin01\schromosome\s8.*/>chr8/g'   assemblies/GCA_013841245.2_ASM1384124v2_genomic.fna
sed -i 's/>CM034070\.1\sApis\smellifera\scarnica\sisolate\sJilin01\schromosome\s9.*/>chr9/g'   assemblies/GCA_013841245.2_ASM1384124v2_genomic.fna
sed -i 's/>CM034071\.1\sApis\smellifera\scarnica\sisolate\sJilin01\schromosome\s10.*/>chr10/g' assemblies/GCA_013841245.2_ASM1384124v2_genomic.fna
sed -i 's/>CM034072\.1\sApis\smellifera\scarnica\sisolate\sJilin01\schromosome\s11.*/>chr11/g' assemblies/GCA_013841245.2_ASM1384124v2_genomic.fna
sed -i 's/>CM034073\.1\sApis\smellifera\scarnica\sisolate\sJilin01\schromosome\s12.*/>chr12/g' assemblies/GCA_013841245.2_ASM1384124v2_genomic.fna
sed -i 's/>CM034074\.1\sApis\smellifera\scarnica\sisolate\sJilin01\schromosome\s13.*/>chr13/g' assemblies/GCA_013841245.2_ASM1384124v2_genomic.fna
sed -i 's/>CM034075\.1\sApis\smellifera\scarnica\sisolate\sJilin01\schromosome\s14.*/>chr14/g' assemblies/GCA_013841245.2_ASM1384124v2_genomic.fna
sed -i 's/>CM034076\.1\sApis\smellifera\scarnica\sisolate\sJilin01\schromosome\s15.*/>chr15/g' assemblies/GCA_013841245.2_ASM1384124v2_genomic.fna
sed -i 's/>CM034077\.1\sApis\smellifera\scarnica\sisolate\sJilin01\schromosome\s16.*/>chr16/g' assemblies/GCA_013841245.2_ASM1384124v2_genomic.fna

# INRA_AMelMel_1.1
sed -i 's/>CM010319\.1\sApis\smellifera\smellifera\sisolate\sACANBOUESSANT\slinkage\sgroup\sLG1.*/>chr1/g'   assemblies/GCA_003314205.2_INRA_AMelMel_1.1_genomic.fna
sed -i 's/>CM010320\.1\sApis\smellifera\smellifera\sisolate\sACANBOUESSANT\slinkage\sgroup\sLG2.*/>chr2/g'   assemblies/GCA_003314205.2_INRA_AMelMel_1.1_genomic.fna
sed -i 's/>CM010321\.1\sApis\smellifera\smellifera\sisolate\sACANBOUESSANT\slinkage\sgroup\sLG3.*/>chr3/g'   assemblies/GCA_003314205.2_INRA_AMelMel_1.1_genomic.fna
sed -i 's/>CM010322\.1\sApis\smellifera\smellifera\sisolate\sACANBOUESSANT\slinkage\sgroup\sLG4.*/>chr4/g'   assemblies/GCA_003314205.2_INRA_AMelMel_1.1_genomic.fna
sed -i 's/>CM010323\.1\sApis\smellifera\smellifera\sisolate\sACANBOUESSANT\slinkage\sgroup\sLG5.*/>chr5/g'   assemblies/GCA_003314205.2_INRA_AMelMel_1.1_genomic.fna
sed -i 's/>CM010324\.2\sApis\smellifera\smellifera\sisolate\sACANBOUESSANT\slinkage\sgroup\sLG6.*/>chr6/g'   assemblies/GCA_003314205.2_INRA_AMelMel_1.1_genomic.fna
sed -i 's/>CM010325\.2\sApis\smellifera\smellifera\sisolate\sACANBOUESSANT\slinkage\sgroup\sLG7.*/>chr7/g'   assemblies/GCA_003314205.2_INRA_AMelMel_1.1_genomic.fna
sed -i 's/>CM010326\.1\sApis\smellifera\smellifera\sisolate\sACANBOUESSANT\slinkage\sgroup\sLG8.*/>chr8/g'   assemblies/GCA_003314205.2_INRA_AMelMel_1.1_genomic.fna
sed -i 's/>CM010327\.1\sApis\smellifera\smellifera\sisolate\sACANBOUESSANT\slinkage\sgroup\sLG9.*/>chr9/g'   assemblies/GCA_003314205.2_INRA_AMelMel_1.1_genomic.fna
sed -i 's/>CM010328\.2\sApis\smellifera\smellifera\sisolate\sACANBOUESSANT\slinkage\sgroup\sLG10.*/>chr10/g' assemblies/GCA_003314205.2_INRA_AMelMel_1.1_genomic.fna
sed -i 's/>CM010329\.1\sApis\smellifera\smellifera\sisolate\sACANBOUESSANT\slinkage\sgroup\sLG11.*/>chr11/g' assemblies/GCA_003314205.2_INRA_AMelMel_1.1_genomic.fna
sed -i 's/>CM010330\.1\sApis\smellifera\smellifera\sisolate\sACANBOUESSANT\slinkage\sgroup\sLG12.*/>chr12/g' assemblies/GCA_003314205.2_INRA_AMelMel_1.1_genomic.fna
sed -i 's/>CM010331\.1\sApis\smellifera\smellifera\sisolate\sACANBOUESSANT\slinkage\sgroup\sLG13.*/>chr13/g' assemblies/GCA_003314205.2_INRA_AMelMel_1.1_genomic.fna
sed -i 's/>CM010332\.1\sApis\smellifera\smellifera\sisolate\sACANBOUESSANT\slinkage\sgroup\sLG14.*/>chr14/g' assemblies/GCA_003314205.2_INRA_AMelMel_1.1_genomic.fna
sed -i 's/>CM010333\.1\sApis\smellifera\smellifera\sisolate\sACANBOUESSANT\slinkage\sgroup\sLG15.*/>chr15/g' assemblies/GCA_003314205.2_INRA_AMelMel_1.1_genomic.fna
sed -i 's/>CM010334\.1\sApis\smellifera\smellifera\sisolate\sACANBOUESSANT\slinkage\sgroup\sLG16.*/>chr16/g' assemblies/GCA_003314205.2_INRA_AMelMel_1.1_genomic.fna

# Amel_4.5
sed -i 's/>NC_007070\.3\sApis\smellifera\sstrain\sDH4\slinkage\sgroup\sLG1.*/>chr1/g' assemblies/GCF_000002195.4_Amel_4.5_genomic.fna
sed -i 's/>NC_007071\.3\sApis\smellifera\sstrain\sDH4\slinkage\sgroup\sLG2.*/>chr2/g' assemblies/GCF_000002195.4_Amel_4.5_genomic.fna
sed -i 's/>NC_007072\.3\sApis\smellifera\sstrain\sDH4\slinkage\sgroup\sLG3.*/>chr3/g' assemblies/GCF_000002195.4_Amel_4.5_genomic.fna
sed -i 's/>NC_007073\.3\sApis\smellifera\sstrain\sDH4\slinkage\sgroup\sLG4.*/>chr4/g' assemblies/GCF_000002195.4_Amel_4.5_genomic.fna
sed -i 's/>NC_007074\.3\sApis\smellifera\sstrain\sDH4\slinkage\sgroup\sLG5.*/>chr5/g' assemblies/GCF_000002195.4_Amel_4.5_genomic.fna
sed -i 's/>NC_007075\.3\sApis\smellifera\sstrain\sDH4\slinkage\sgroup\sLG6.*/>chr6/g' assemblies/GCF_000002195.4_Amel_4.5_genomic.fna
sed -i 's/>NC_007076\.3\sApis\smellifera\sstrain\sDH4\slinkage\sgroup\sLG7.*/>chr7/g' assemblies/GCF_000002195.4_Amel_4.5_genomic.fna
sed -i 's/>NC_007077\.3\sApis\smellifera\sstrain\sDH4\slinkage\sgroup\sLG8.*/>chr8/g' assemblies/GCF_000002195.4_Amel_4.5_genomic.fna
sed -i 's/>NC_007078\.3\sApis\smellifera\sstrain\sDH4\slinkage\sgroup\sLG9.*/>chr9/g' assemblies/GCF_000002195.4_Amel_4.5_genomic.fna
sed -i 's/>NC_007079\.3\sApis\smellifera\sstrain\sDH4\slinkage\sgroup\sLG10.*/>chr10/g' assemblies/GCF_000002195.4_Amel_4.5_genomic.fna
sed -i 's/>NC_007080\.3\sApis\smellifera\sstrain\sDH4\slinkage\sgroup\sLG11.*/>chr11/g' assemblies/GCF_000002195.4_Amel_4.5_genomic.fna
sed -i 's/>NC_007081\.3\sApis\smellifera\sstrain\sDH4\slinkage\sgroup\sLG12.*/>chr12/g' assemblies/GCF_000002195.4_Amel_4.5_genomic.fna
sed -i 's/>NC_007082\.3\sApis\smellifera\sstrain\sDH4\slinkage\sgroup\sLG13.*/>chr13/g' assemblies/GCF_000002195.4_Amel_4.5_genomic.fna
sed -i 's/>NC_007083\.3\sApis\smellifera\sstrain\sDH4\slinkage\sgroup\sLG14.*/>chr14/g' assemblies/GCF_000002195.4_Amel_4.5_genomic.fna
sed -i 's/>NC_007084\.3\sApis\smellifera\sstrain\sDH4\slinkage\sgroup\sLG15.*/>chr15/g' assemblies/GCF_000002195.4_Amel_4.5_genomic.fna
sed -i 's/>NC_007085\.3\sApis\smellifera\sstrain\sDH4\slinkage\sgroup\sLG16.*/>chr16/g' assemblies/GCF_000002195.4_Amel_4.5_genomic.fna
