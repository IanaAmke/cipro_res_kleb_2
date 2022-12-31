# script modified from original code written by Dr. Kara Tsang

import sys
import glob
import csv
import re
import os
from Bio import SeqIO


included_mutations=[]
uniquehits_file=[]
for file in glob.glob("*geneHits.fasta"):
	for seq_record in SeqIO.parse(file, "fasta"):
		header = str(seq_record.id)
		sequence = str(seq_record.seq).upper()
		fasta_name=(header.split("/")[6])
		fasta_name=fasta_name.replace("_NextSeq_500_paired_end_sequencing","")
		fasta_name=fasta_name.replace("_Illumina_MiSeq_paired_end_sequencing","")
		fasta_name=fasta_name.replace("#","_")
		fasta_name=fasta_name.replace("KGVETS-","")
		fasta_name=fasta_name.replace("KGVET-","")
		fasta_name=fasta_name.replace("Klebsiella_pneumoniae_","")
		fasta_name=fasta_name.replace("_Klebsiella_pneumoniae","")
		fasta_name=fasta_name.replace("Klebsiella_variicola_","")
		fasta_name=fasta_name.replace("Klebsiella_quasipneumoniae_","")
		fasta_name=fasta_name.replace("_final","")
		fasta_name=fasta_name.replace("_out","")
		fasta_name=re.sub("[_]S.*[_]L555","",fasta_name)

		fasta1=fasta_name.split(".fasta_")
		with open("kleb_sample_metadata.tsv","r") as kleb_sample_metadata:
			tsv_file = csv.reader(kleb_sample_metadata, delimiter="\t")
			next(tsv_file, None)
			for line in tsv_file:
				if fasta1[0] == line[0]:
					fasta1[0]=line[1]

		with open("cipro_antibiogram_uniquehits.tsv", "r") as antibiogram:
			antibiogram_file = csv.reader(antibiogram, delimiter="\t")
			next(antibiogram_file, None)
			for line in antibiogram_file:
				unique_hit=[]
				unique_hit.append(line[0])
				unique_hit.append(line[12])
				uniquehits_file.append(unique_hit)
				if line[0] == fasta1[0] and line[12] == fasta1[1]:
					if fasta1 not in included_mutations:
						with open("filtered_gyrA_parC.fasta","a") as new_file:
							new_file.write(">" + line[0] + "_" + line[11] + "_" + line[12] + "\n" + sequence + "\n")	
							included_mutations.append(fasta1)		


first_set = set(map(tuple, included_mutations))
second_set = set(map(tuple, uniquehits_file))

print("These are the missing genes: \n")
print(first_set.symmetric_difference(second_set))