#!/bin/bash
#SBATCH --job-name=blast_mismatch_gyrA
#SBATCH --account=js66
#SBATCH --time=03:00:00
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=20
#SBATCH --mem-per-cpu=32000
#SBATCH --mail-type=begin
#SBATCH --mail-type=end
#SBATCH --mail-type=fail
#SBATCH --mail-user=Iana.Amke1@lshtm.ac.uk

# load blast
module load blast/2.2.30

# make protein database
makeblastdb -in /home/iamke/js66_scratch/iana/extracted_sequences/filtered_gyrA_parC_nogaps_NR_aa_seq.faa -dbtype prot

# blast alignment
blastp -query /home/iamke/js66_scratch/iana/extracted_sequences/gyrA_parC_ref_aa_seq.faa -db /home/iamke/js66_scratch/iana/extracted_sequences/filtered_gyrA_parC_nogaps_NR_aa_seq.faa -out /home/iamke/js66_scratch/iana/extracted_sequences/gyrA_parC_blast.tsv -max_target_seqs 21000 -outfmt "6 qseqid sseqid pident length mismatch qstart qend sstart send evalue bitscore"
