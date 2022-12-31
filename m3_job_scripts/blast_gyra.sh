#!/bin/bash
#SBATCH --job-name=blast_gyrA
#SBATCH --account=js66
#SBATCH --time=03:00:00
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --mem-per-cpu=4000
#SBATCH --mail-type=begin
#SBATCH --mail-type=end
#SBATCH --mail-type=fail
#SBATCH --mail-user=Iana.Amke1@lshtm.ac.uk

# load blast
module load blast/2.2.30

# make protein database
makeblastdb -in /home/iamke/js66_scratch/iana/extracted_seq/filtered_gyrA_aa.faa -dbtype prot

# blast alignment
blastp -query /home/iamke/js66_scratch/iana/extracted_seq/gyra_ref_aa_seq.faa -db /home/iamke/js66_scratch/iana/extracted_seq/filtered_gyrA_aa.faa -out /home/iamke/js66_scratch/iana/extracted_seq/gyrA_blast.tsv -max_target_seqs 31000 -subject_besthit -outfmt "6 qseqid sseqid pident length mismatch qstart qend sstart send evalue bitscore"
