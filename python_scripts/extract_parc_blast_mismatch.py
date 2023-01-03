import sys
import glob
import csv
import os
from Bio import SeqIO

aa_seq=[]
mismatch_file=[]

for seq_record in SeqIO.parse("filtered_gyrA_parC_nogaps_NR_aa_seq.faa", "fasta"):
    header = str(seq_record.id)
    sequence = str(seq_record.seq).upper()
    fasta_name=header.split(" ")[0]

    with open("parC_blast_mismatch.tsv","r") as blast_output:
        mismatch = csv.reader(blast_output, delimiter="\t")
        next(mismatch, None)
        for line in mismatch:
            mismatch_file.append(line[1])
            if line[1] == fasta_name:
                if fasta_name not in aa_seq:
                    with open("parc_blast_mismatch.faa","a") as new_file:
                        new_file.write(">" + line[1] + "\n" + sequence + "\n")
                        aa_seq.append(fasta_name)

set_one=set(aa_seq)
set_two=set(mismatch_file)
if set_one == set_two:
    print("All there!")
else:
    print("Missing: \n", set_one.symmetric_difference(set_two))