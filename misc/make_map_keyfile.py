h = "sampleName\tfilename\tfilename2"
acc_list = open("PRJNA605407_list.txt", "r")
lines = acc_list.readlines()
acc_list.close()

with open("map_PRJNA605407_keyfile.txt", "w") as keyfile:
    keyfile.write(f"{h}\n")
    for line in lines:
        l = line.strip()
        keyfile.write(f"{l}\tdata/fastq/PRJNA605407/{l}_1.fastq.gz\tdata/fastq/PRJNA605407/{l}_2.fastq.gz\n")
