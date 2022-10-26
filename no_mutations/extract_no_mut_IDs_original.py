import sys
import glob
import csv
import re
import os
from Bio import SeqIO

included_mutations=[]
cipro_no_mut_file=[]
for file in glob.glob("*_geneHits.fasta"):
	for seq_record in SeqIO.parse(file, "fasta"):
		header = str(seq_record.id)
		sequence = str(seq_record.seq).upper()
		fasta_name=(header.split("/")[6])
		fasta_name=fasta_name.replace("_NextSeq_500_paired_end_sequencing","")
		fasta_name=fasta_name.replace("_Illumina_MiSeq_paired_end_sequencing","")
		fasta_name=fasta_name.replace("#","_")
		fasta_name=fasta_name.replace("KGVET-","")
		fasta_name=fasta_name.replace("_Klebsiella_pneumoniae","")
		fasta_name=re.sub("[_]S.*[.]",".",fasta_name)

		fasta1=fasta_name.split(".fasta_")
		with open("kleb_sample_metadata.tsv","r") as kleb_sample_metadata:
			tsv_file = csv.reader(kleb_sample_metadata, delimiter="\t")
			next(tsv_file, None)
			for line in tsv_file:
				if fasta1[0] == line[0]:
					fasta1[0]=line[1]
		
		with open("cipro_res_no_mutations.tsv", "r") as no_mut:
			no_mut_file = csv.reader(no_mut, delimiter="\t")
			next(no_mut_file, None)
			for line in no_mut_file:
				cipro_no_mut=[]
				cipro_no_mut.append(line[0])
				cipro_no_mut_file.append(cipro_no_mut)
				if line[0] == fasta1[0]:
					if fasta1 not in included_mutations:
						with open("filtered_mutations.fasta","a") as new_file:
							new_file.write(">" + line[0] + "_" + fasta1[1] + "\n" + sequence + "\n")
							included_mutations.append(fasta1)	

first_set = set(map(tuple, included_mutations))
second_set = set(map(tuple, cipro_no_mut_file))
print("These are the missing genes:")
print(first_set.symmetric_difference(second_set))

