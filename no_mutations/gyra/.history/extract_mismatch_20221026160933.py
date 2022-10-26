import sys
import glob
import csv
import os
from Bio import SeqIO

aa_seq=[]
mismatch_file=[]

for seq_record in SeqIO.parse("filtered_mutations_gyra_aa_seq.faa", "fasta"):
    header = str(seq_record.id)
    sequence = str(seq_record.seq).upper()
    fasta_name=header.split(" ")[0]

print(fasta_name)