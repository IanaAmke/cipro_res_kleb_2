#!/bin/bash
#SBATCH --job-name=extract_seq
#SBATCH --account=js66
#SBATCH --time=01:00:00
#SBATCH --ntasks=5
#SBATCH --mem-per-cpu=4096
#SBATCH --cpus-per-task=1

# load modules on M3
module load blast/2.2.30
module load python/2.7.15-gcc5

# extract alignment of BLAST hits from a set of input seq
python /projects/js66/holtlab/kats_script_folder/blast2Align.py -s query_seq_gyra.fasta -i 60 -o Egli_MIC_gyra_geneHits.mfasta /home/iamke/js66_scratch/iana/Egli_MIC_fasta/*.fasta
python /projects/js66/holtlab/kats_script_folder/blast2Align.py -s query_seq_gyra.fasta -i 60 -o Huynh2020_gyra_geneHits.mfasta /home/iamke/js66_scratch/iana/Huynh2020_fasta/*.fasta
python /projects/js66/holtlab/kats_script_folder/blast2Align.py -s query_seq_gyra.fasta -i 60 -o sands2021_arthropods_gyra_geneHits.mfasta /home/iamke/js66_scratch/iana/sands2021_arthropods_fasta/*.fasta
python /projects/js66/holtlab/kats_script_folder/blast2Align.py -s query_seq_gyra.fasta -i 60 -o sands2021_BARNARDS_gyra_geneHits.mfasta /home/iamke/js66_scratch/iana/sands2021_BARNARDS_fasta/*.fasta
python /projects/js66/holtlab/kats_script_folder/blast2Align.py -s query_seq_gyra.fasta -i 60 -o spark_KpSc_gyra_geneHits.mfasta /home/iamke/js66_scratch/iana/spark_KpSc_fasta/*.fasta
python /projects/js66/holtlab/kats_script_folder/blast2Align.py -s query_seq_gyra.fasta -i 60 -o Alfred_KASPAH_gyra_geneHits.mfasta /home/iamke/js66_scratch/iana/Alfred_KASPAH_fasta/*.fasta
python /projects/js66/holtlab/kats_script_folder/blast2Align.py -s query_seq_gyra.fasta -i 60 -o KpT7_gyra_geneHits.mfasta /home/iamke/js66_scratch/iana/KpT7_fasta/*.fasta
python /projects/js66/holtlab/kats_script_folder/blast2Align.py -s query_seq_gyra.fasta -i 60 -o Wright_gyra_geneHits.mfasta /home/iamke/js66_scratch/iana/Wright_fasta/*.fasta
python /projects/js66/holtlab/kats_script_folder/blast2Align.py -s query_seq_gyra.fasta -i 60 -o Torok_Vietnam_gyra_geneHits.mfasta /home/iamke/js66_scratch/iana/Torok_Vietnam_fasta/*.fasta
python /projects/js66/holtlab/kats_script_folder/blast2Align.py -s query_seq_gyra.fasta -i 60 -o Stoesser_2013_gyra_geneHits.mfasta /home/iamke/js66_scratch/iana/Stoesser_2013_fasta/*.fasta
python /projects/js66/holtlab/kats_script_folder/blast2Align.py -s query_seq_gyra.fasta -i 60 -o Philippines_gyra_geneHits.mfasta /home/iamke/js66_scratch/iana/Philippines_fasta/*.fasta
python /projects/js66/holtlab/kats_script_folder/blast2Align.py -s query_seq_gyra.fasta -i 60 -o Parkhill_gyra_geneHits.mfasta /home/iamke/js66_scratch/iana/Parkhill_fasta/*.fasta
python /projects/js66/holtlab/kats_script_folder/blast2Align.py -s query_seq_gyra.fasta -i 60 -o NORKAB_gyra_geneHits.mfasta /home/iamke/js66_scratch/iana/NORKAB_fasta/*.fasta
python /projects/js66/holtlab/kats_script_folder/blast2Align.py -s query_seq_gyra.fasta -i 60 -o Nigeria_GHRU_gyra_geneHits.mfasta /home/iamke/js66_scratch/iana/Nigeria_GHRU_fasta/*.fasta
python /projects/js66/holtlab/kats_script_folder/blast2Align.py -s query_seq_gyra.fasta -i 60 -o milan_sanraffaele_2019_gyra_geneHits.mfasta /home/iamke/js66_scratch/iana/milan_sanraffaele_2019_fasta/*.fasta
python /projects/js66/holtlab/kats_script_folder/blast2Align.py -s query_seq_gyra.fasta -i 60 -o Long_gyra_geneHits.mfasta /home/iamke/js66_scratch/iana/Long_fasta/*.fasta
python /projects/js66/holtlab/kats_script_folder/blast2Align.py -s query_seq_gyra.fasta -i 60 -o KpNORM_gyra_geneHits.mfasta /home/iamke/js66_scratch/iana/KpNORM_fasta/*.fasta
python /projects/js66/holtlab/kats_script_folder/blast2Align.py -s query_seq_gyra.fasta -i 60 -o KlebGAP_gyra_geneHits.mfasta /home/iamke/js66_scratch/iana/KlebGAP_fasta/*.fasta
python /projects/js66/holtlab/kats_script_folder/blast2Align.py -s query_seq_gyra.fasta -i 60 -o India_GHRU_gyra_geneHits.mfasta /home/iamke/js66_scratch/iana/India_GHRU_fasta/*.fasta
python /projects/js66/holtlab/kats_script_folder/blast2Align.py -s query_seq_gyra.fasta -i 60 -o Heinz_2019_gyra_geneHits.mfasta /home/iamke/js66_scratch/iana/Heinz_2019_fasta/*.fasta
python /projects/js66/holtlab/kats_script_folder/blast2Align.py -s query_seq_gyra.fasta -i 60 -o Colombia_GHRU_gyra_geneHits.mfasta /home/iamke/js66_scratch/iana/Colombia_GHRU_fasta/*.fasta
python /projects/js66/holtlab/kats_script_folder/blast2Align.py -s query_seq_gyra.fasta -i 60 -o bachman_2022_gyra_geneHits.mfasta /home/iamke/js66_scratch/iana/bachman_2022_fasta/*.fasta
python /projects/js66/holtlab/kats_script_folder/blast2Align.py -s query_seq_gyra.fasta -i 60 -o Addenbrookes_gyra_geneHits.mfasta /home/iamke/js66_scratch/iana/Addenbrookes_fasta/*.fasta
python /projects/js66/holtlab/kats_script_folder/blast2Align.py -s query_seq_gyra.fasta -i 60 -o Italy_MVK_MIC_gyra_geneHits.mfasta /home/iamke/js66_scratch/iana/Italy_MVK_MIC_fasta/*.fasta
python /projects/js66/holtlab/kats_script_folder/blast2Align.py -s query_seq_gyra.fasta -i 60 -o Denmark_MVK_MIC_gyra_geneHits.mfasta /home/iamke/js66_scratch/iana/Denmark_MVK_MIC_fasta/*.fasta
python /projects/js66/holtlab/kats_script_folder/blast2Align.py -s query_seq_gyra.fasta -i 60 -o Sunde_NVI_2021_gyra_geneHits.mfasta /home/iamke/js66_scratch/iana/Sunde_NVI_2021_fasta/*.fasta
