#!/bin/bash
#SBATCH --job-name=gyrA_parC_blast
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

# blast Kp genomes from samples against gyrA and parC genes
python /home/iamke/js66/holtlab/geneBlastCheck.py -s /home/iamke/js66_scratch/iana/query_gyrA_parC.fasta /home/iamke/js66_scratch/iana/Egli_MIC_fasta/*.fasta > Egli_MIC_gene_hits.txt
python /home/iamke/js66/holtlab/geneBlastCheck.py -s /home/iamke/js66_scratch/iana/query_gyrA_parC.fasta /home/iamke/js66_scratch/iana/Huynh2020_fasta/*.fasta > Huynh2020_gene_hits.txt
python /home/iamke/js66/holtlab/geneBlastCheck.py -s /home/iamke/js66_scratch/iana/query_gyrA_parC.fasta /home/iamke/js66_scratch/iana/sands2021_arthropods_fasta/*.fasta > sands2021_arthropods_gene_hits.txt
python /home/iamke/js66/holtlab/geneBlastCheck.py -s /home/iamke/js66_scratch/iana/query_gyrA_parC.fasta /home/iamke/js66_scratch/iana/sands2021_BARNARDS_fasta/*.fasta > sands2021_BARNARDS_gene_hits.txt
python /home/iamke/js66/holtlab/geneBlastCheck.py -s /home/iamke/js66_scratch/iana/query_gyrA_parC.fasta /home/iamke/js66_scratch/iana/spark_KpSc_fasta/*.fasta > spark_KpSc_gene_hits.txt
python /home/iamke/js66/holtlab/geneBlastCheck.py -s /home/iamke/js66_scratch/iana/query_gyrA_parC.fasta /home/iamke/js66_scratch/iana/Alfred_KASPAH_fasta/*.fasta > Alfred_KASPAH_gene_hits.txt
python /home/iamke/js66/holtlab/geneBlastCheck.py -s /home/iamke/js66_scratch/iana/query_gyrA_parC.fasta /home/iamke/js66_scratch/iana/KpT7_fasta/*.fasta > KpT7_gene_hits.txt
python /home/iamke/js66/holtlab/geneBlastCheck.py -s /home/iamke/js66_scratch/iana/query_gyrA_parC.fasta /home/iamke/js66_scratch/iana/Wright_fasta/*.fasta > Wright_gene_hits.txt
python /home/iamke/js66/holtlab/geneBlastCheck.py -s /home/iamke/js66_scratch/iana/query_gyrA_parC.fasta /home/iamke/js66_scratch/iana/Torok_Vietnam_fasta/*.fasta > Torok_Vietnam_gene_hits.txt
python /home/iamke/js66/holtlab/geneBlastCheck.py -s /home/iamke/js66_scratch/iana/query_gyrA_parC.fasta /home/iamke/js66_scratch/iana/Stoesser_2013_fasta/*.fasta > Stoesser_2013_gene_hits.txt
python /home/iamke/js66/holtlab/geneBlastCheck.py -s /home/iamke/js66_scratch/iana/query_gyrA_parC.fasta /home/iamke/js66_scratch/iana/Philippines_fasta/*.fasta > Philippines_gene_hits.txt
python /home/iamke/js66/holtlab/geneBlastCheck.py -s /home/iamke/js66_scratch/iana/query_gyrA_parC.fasta /home/iamke/js66_scratch/iana/Parkhill_fasta/*.fasta > Parkhill_gene_hits.txt
python /home/iamke/js66/holtlab/geneBlastCheck.py -s /home/iamke/js66_scratch/iana/query_gyrA_parC.fasta /home/iamke/js66_scratch/iana/NORKAB_fasta/*.fasta > NORKAB_gene_hits.txt
python /home/iamke/js66/holtlab/geneBlastCheck.py -s /home/iamke/js66_scratch/iana/query_gyrA_parC.fasta /home/iamke/js66_scratch/iana/Nigeria_GHRU_fasta/*.fasta > Nigeria_GHRU_gene_hits.txt
python /home/iamke/js66/holtlab/geneBlastCheck.py -s /home/iamke/js66_scratch/iana/query_gyrA_parC.fasta /home/iamke/js66_scratch/iana/milan_sanraffaele_2019_fasta/*.fasta > milan_sanraffaele_2019_gene_hits.txt
python /home/iamke/js66/holtlab/geneBlastCheck.py -s /home/iamke/js66_scratch/iana/query_gyrA_parC.fasta /home/iamke/js66_scratch/iana/Long_fasta/*.fasta > Long_gene_hits.txt
python /home/iamke/js66/holtlab/geneBlastCheck.py -s /home/iamke/js66_scratch/iana/query_gyrA_parC.fasta /home/iamke/js66_scratch/iana/KpNORM_fasta/*.fasta > KpNORM_gene_hits.txt
python /home/iamke/js66/holtlab/geneBlastCheck.py -s /home/iamke/js66_scratch/iana/query_gyrA_parC.fasta /home/iamke/js66_scratch/iana/KlebGAP_fasta/*.fasta > KlebGAP_gene_hits.txt
python /home/iamke/js66/holtlab/geneBlastCheck.py -s /home/iamke/js66_scratch/iana/query_gyrA_parC.fasta /home/iamke/js66_scratch/iana/India_GHRU_fasta/*.fasta > India_GHRU_gene_hits.txt
python /home/iamke/js66/holtlab/geneBlastCheck.py -s /home/iamke/js66_scratch/iana/query_gyrA_parC.fasta /home/iamke/js66_scratch/iana/Heinz_2019_fasta/*.fasta > Heinz_2019_gene_hits.txt
python /home/iamke/js66/holtlab/geneBlastCheck.py -s /home/iamke/js66_scratch/iana/query_gyrA_parC.fasta /home/iamke/js66_scratch/iana/Colombia_GHRU_fasta/*.fasta > Colombia_GHRU_gene_hits.txt
python /home/iamke/js66/holtlab/geneBlastCheck.py -s /home/iamke/js66_scratch/iana/query_gyrA_parC.fasta /home/iamke/js66_scratch/iana/bachman_2022_fasta/*.fasta > bachman_2022_gene_hits.txt
python /home/iamke/js66/holtlab/geneBlastCheck.py -s /home/iamke/js66_scratch/iana/query_gyrA_parC.fasta /home/iamke/js66_scratch/iana/Addenbrookes_fasta/*.fasta > Addenbrookes_gene_hits.txt
python /home/iamke/js66/holtlab/geneBlastCheck.py -s /home/iamke/js66_scratch/iana/query_gyrA_parC.fasta /home/iamke/js66_scratch/iana/Italy_MVK_MIC_fasta/*.fasta > Italy_MVK_MIC_gene_hits.txt
python /home/iamke/js66/holtlab/geneBlastCheck.py -s /home/iamke/js66_scratch/iana/query_gyrA_parC.fasta /home/iamke/js66_scratch/iana/Denmark_MVK_MIC_fasta/*.fasta > Denmark_MVK_MIC_gene_hits.txt
python /home/iamke/js66/holtlab/geneBlastCheck.py -s /home/iamke/js66_scratch/iana/query_gyrA_parC.fasta /home/iamke/js66_scratch/iana/Sunde_NVI_2021_fasta/*.fasta > Sunde_NVI_2021_gene_hits.txt
