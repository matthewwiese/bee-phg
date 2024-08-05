h = "sampleName\tfilename"
acc_list = open("PRJNA605407_list.txt", "r")
lines = acc_list.readlines()
acc_list.close()

with open("path_PRJNA605407_keyfile.txt", "w") as keyfile:
    keyfile.write(f"{h}\n")
    for line in lines:
        l = line.strip()
        keyfile.write(f"{l}\tmap/PRJNA605407/{l}_1_readMapping.txt\n")
