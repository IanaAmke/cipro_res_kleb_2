#!/bin/bash
#SBATCH --job-name=cipro_blast_tabulate
#SBATCH --account=js66
#SBATCH --time=03:00:00
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=2
#SBATCH --mem-per-cpu=4000
#SBATCH --mail-type=begin
#SBATCH --mail-type=end
#SBATCH --mail-type=fail
#SBATCH --mail-user=Iana.Amke1@lshtm.ac.uk

# load modules
module load python/2.7.15-gcc5

# tabulate raw blast output
python /projects/js66/holtlab/tabulateBlastHits.py -i Egli_MIC_gene_hits.txt -o Egli_MIC_gene_search_results
python /projects/js66/holtlab/tabulateBlastHits.py -i Huynh2020_gene_hits.txt -o Huynh2020_gene_search_results
python /projects/js66/holtlab/tabulateBlastHits.py -i sands2021_arthropods_gene_hits.txt -o sands2021_arthropods_gene_search_results
python /projects/js66/holtlab/tabulateBlastHits.py -i sands2021_BARNARDS_gene_hits.txt -o sands2021_BARNARDS_gene_search_results
python /projects/js66/holtlab/tabulateBlastHits.py -i spark_KpSc_gene_hits.txt -o spark_KpSc_gene_search_results
python /projects/js66/holtlab/tabulateBlastHits.py -i Alfred_KASPAH_gene_hits.txt -o Alfred_KASPAH_gene_search_results
python /projects/js66/holtlab/tabulateBlastHits.py -i KpT7_gene_hits.txt -o KpT7_gene_search_results
python /projects/js66/holtlab/tabulateBlastHits.py -i Wright_gene_hits.txt -o Wright_gene_search_results
python /projects/js66/holtlab/tabulateBlastHits.py -i Torok_Vietnam_gene_hits.txt -o Torok_Vietnam_gene_search_results
python /projects/js66/holtlab/tabulateBlastHits.py -i Stoesser_2013_gene_hits.txt -o Stoesser_2013_gene_search_results
python /projects/js66/holtlab/tabulateBlastHits.py -i Philippines_gene_hits.txt -o Philippines_gene_search_results
python /projects/js66/holtlab/tabulateBlastHits.py -i Parkhill_gene_hits.txt -o Parkhill_gene_search_results
python /projects/js66/holtlab/tabulateBlastHits.py -i NORKAB_gene_hits.txt -o NORKAB_gene_search_results
python /projects/js66/holtlab/tabulateBlastHits.py -i Nigeria_GHRU_gene_hits.txt -o Nigeria_GHRU_gene_search_results
python /projects/js66/holtlab/tabulateBlastHits.py -i milan_sanraffaele_2019_gene_hits.txt -o milan_sanraffaele_2019_gene_search_results
python /projects/js66/holtlab/tabulateBlastHits.py -i Long_gene_hits.txt -o Long_gene_search_results
python /projects/js66/holtlab/tabulateBlastHits.py -i KpNORM_gene_hits.txt -o KpNORM_gene_search_results
python /projects/js66/holtlab/tabulateBlastHits.py -i KlebGAP_gene_hits.txt -o KlebGAP_gene_search_results
python /projects/js66/holtlab/tabulateBlastHits.py -i India_GHRU_gene_hits.txt -o India_GHRU_gene_search_results
python /projects/js66/holtlab/tabulateBlastHits.py -i Heinz_2019_gene_hits.txt -o Heinz_2019_gene_search_results
python /projects/js66/holtlab/tabulateBlastHits.py -i Colombia_GHRU_gene_hits.txt -o Colombia_GHRU_gene_search_results
python /projects/js66/holtlab/tabulateBlastHits.py -i bachman_2022_gene_hits.txt -o bachman_2022_gene_search_results
python /projects/js66/holtlab/tabulateBlastHits.py -i Addenbrookes_gene_hits.txt -o Addenbrookes_gene_search_results
python /projects/js66/holtlab/tabulateBlastHits.py -i Italy_MVK_MIC_gene_hits.txt -o Italy_MVK_MIC_gene_search_results
python /projects/js66/holtlab/tabulateBlastHits.py -i Denmark_MVK_MIC_gene_hits.txt -o Denmark_MVK_MIC_gene_search_results
python /projects/js66/holtlab/tabulateBlastHits.py -i Sunde_NVI_2021_gene_hits.txt -o Sunde_NVI_2021_gene_search_results
