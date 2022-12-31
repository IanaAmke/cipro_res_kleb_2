#!/bin/bash
#SBATCH --job-name=extract_parc
#SBATCH --account=js66
#SBATCH --time=03:00:00
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --mem-per-cpu=8000
#SBATCH --mail-type=begin
#SBATCH --mail-type=end
#SBATCH --mail-type=fail
#SBATCH --mail-user=Iana.Amke1@lshtm.ac.uk

# load modules on M3
module load blast/2.2.30
module load python/2.7.15-gcc5

# extract alignment of BLAST hits from a set of input seq
python /projects/js66/holtlab/kats_script_folder/blast2Align.py -s query_seq_parc.fasta -i 80 -o Egli_MIC_parc_geneHits.mfasta /home/iamke/js66_scratch/iana/Egli_MIC_fasta/*.fasta
python /projects/js66/holtlab/kats_script_folder/blast2Align.py -s query_seq_parc.fasta -i 80 -o Huynh2020_parc_geneHits.mfasta /home/iamke/js66_scratch/iana/Huynh2020_fasta/*.fasta
python /projects/js66/holtlab/kats_script_folder/blast2Align.py -s query_seq_parc.fasta -i 80 -o sands2021_arthropods_parc_geneHits.mfasta /home/iamke/js66_scratch/iana/sands2021_arthropods_fasta/*.fasta
python /projects/js66/holtlab/kats_script_folder/blast2Align.py -s query_seq_parc.fasta -i 80 -o sands2021_BARNARDS_parc_geneHits.mfasta /home/iamke/js66_scratch/iana/sands2021_BARNARDS_fasta/*.fasta
python /projects/js66/holtlab/kats_script_folder/blast2Align.py -s query_seq_parc.fasta -i 80 -o spark_KpSc_parc_geneHits.mfasta /home/iamke/js66_scratch/iana/spark_KpSc_fasta/*.fasta
python /projects/js66/holtlab/kats_script_folder/blast2Align.py -s query_seq_parc.fasta -i 80 -o Alfred_KASPAH_parc_geneHits.mfasta /home/iamke/js66_scratch/iana/Alfred_KASPAH_fasta/*.fasta
python /projects/js66/holtlab/kats_script_folder/blast2Align.py -s query_seq_parc.fasta -i 80 -o KpT7_parc_geneHits.mfasta /home/iamke/js66_scratch/iana/KpT7_fasta/*.fasta
python /projects/js66/holtlab/kats_script_folder/blast2Align.py -s query_seq_parc.fasta -i 80 -o Wright_parc_geneHits.mfasta /home/iamke/js66_scratch/iana/Wright_fasta/*.fasta
python /projects/js66/holtlab/kats_script_folder/blast2Align.py -s query_seq_parc.fasta -i 80 -o Torok_Vietnam_parc_geneHits.mfasta /home/iamke/js66_scratch/iana/Torok_Vietnam_fasta/*.fasta
python /projects/js66/holtlab/kats_script_folder/blast2Align.py -s query_seq_parc.fasta -i 80 -o Stoesser_2013_parc_geneHits.mfasta /home/iamke/js66_scratch/iana/Stoesser_2013_fasta/*.fasta
python /projects/js66/holtlab/kats_script_folder/blast2Align.py -s query_seq_parc.fasta -i 80 -o Philippines_parc_geneHits.mfasta /home/iamke/js66_scratch/iana/Philippines_fasta/*.fasta
python /projects/js66/holtlab/kats_script_folder/blast2Align.py -s query_seq_parc.fasta -i 80 -o Parkhill_parc_geneHits.mfasta /home/iamke/js66_scratch/iana/Parkhill_fasta/*.fasta
python /projects/js66/holtlab/kats_script_folder/blast2Align.py -s query_seq_parc.fasta -i 80 -o NORKAB_parc_geneHits.mfasta /home/iamke/js66_scratch/iana/NORKAB_fasta/*.fasta
python /projects/js66/holtlab/kats_script_folder/blast2Align.py -s query_seq_parc.fasta -i 80 -o Nigeria_GHRU_parc_geneHits.mfasta /home/iamke/js66_scratch/iana/Nigeria_GHRU_fasta/*.fasta
python /projects/js66/holtlab/kats_script_folder/blast2Align.py -s query_seq_parc.fasta -i 80 -o milan_sanraffaele_2019_parc_geneHits.mfasta /home/iamke/js66_scratch/iana/milan_sanraffaele_2019_fasta/*.fasta
python /projects/js66/holtlab/kats_script_folder/blast2Align.py -s query_seq_parc.fasta -i 80 -o Long_parc_geneHits.mfasta /home/iamke/js66_scratch/iana/Long_fasta/*.fasta
python /projects/js66/holtlab/kats_script_folder/blast2Align.py -s query_seq_parc.fasta -i 80 -o KpNORM_parc_geneHits.mfasta /home/iamke/js66_scratch/iana/KpNORM_fasta/*.fasta
python /projects/js66/holtlab/kats_script_folder/blast2Align.py -s query_seq_parc.fasta -i 80 -o KlebGAP_parc_geneHits.mfasta /home/iamke/js66_scratch/iana/KlebGAP_fasta/*.fasta
python /projects/js66/holtlab/kats_script_folder/blast2Align.py -s query_seq_parc.fasta -i 80 -o India_GHRU_parc_geneHits.mfasta /home/iamke/js66_scratch/iana/India_GHRU_fasta/*.fasta
python /projects/js66/holtlab/kats_script_folder/blast2Align.py -s query_seq_parc.fasta -i 80 -o Heinz_2019_parc_geneHits.mfasta /home/iamke/js66_scratch/iana/Heinz_2019_fasta/*.fasta
python /projects/js66/holtlab/kats_script_folder/blast2Align.py -s query_seq_parc.fasta -i 80 -o Colombia_GHRU_parc_geneHits.mfasta /home/iamke/js66_scratch/iana/Colombia_GHRU_fasta/*.fasta
python /projects/js66/holtlab/kats_script_folder/blast2Align.py -s query_seq_parc.fasta -i 80 -o bachman_2022_parc_geneHits.mfasta /home/iamke/js66_scratch/iana/bachman_2022_fasta/*.fasta
python /projects/js66/holtlab/kats_script_folder/blast2Align.py -s query_seq_parc.fasta -i 80 -o Addenbrookes_parc_geneHits.mfasta /home/iamke/js66_scratch/iana/Addenbrookes_fasta/*.fasta
python /projects/js66/holtlab/kats_script_folder/blast2Align.py -s query_seq_parc.fasta -i 80 -o Italy_MVK_MIC_parc_geneHits.mfasta /home/iamke/js66_scratch/iana/Italy_MVK_MIC_fasta/*.fasta
python /projects/js66/holtlab/kats_script_folder/blast2Align.py -s query_seq_parc.fasta -i 80 -o Denmark_MVK_MIC_parc_geneHits.mfasta /home/iamke/js66_scratch/iana/Denmark_MVK_MIC_fasta/*.fasta
python /projects/js66/holtlab/kats_script_folder/blast2Align.py -s query_seq_parc.fasta -i 80 -o Sunde_NVI_2021_parc_geneHits.mfasta /home/iamke/js66_scratch/iana/Sunde_NVI_2021_fasta/*.fasta
