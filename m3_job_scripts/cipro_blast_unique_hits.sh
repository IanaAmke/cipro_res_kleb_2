#!/bin/bash
#SBATCH --job-name=cipro_unique_hits
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
module load python/2.7.15-gcc5

# assign specific alleles to contig regions
python /projects/js66/holtlab/sortContigsFromResFinderBlast.py /home/iamke/js66_scratch/iana/cipro_blast_hits/Egli_MIC_gene_hits.txt -t restable > Egli_MIC_uniqueHits.tsv
python /projects/js66/holtlab/sortContigsFromResFinderBlast.py /home/iamke/js66_scratch/iana/cipro_blast_hits/Huynh2020_gene_hits.txt -t restable > Huynh2020_uniqueHits.tsv
python /projects/js66/holtlab/sortContigsFromResFinderBlast.py /home/iamke/js66_scratch/iana/cipro_blast_hits/sands2021_arthropods_gene_hits.txt -t restable > sands2021_arthropods_uniqueHits.tsv
python /projects/js66/holtlab/sortContigsFromResFinderBlast.py /home/iamke/js66_scratch/iana/cipro_blast_hits/sands2021_BARNARDS_gene_hits.txt -t restable > sands2021_BARNARDS_uniqueHits.tsv
python /projects/js66/holtlab/sortContigsFromResFinderBlast.py /home/iamke/js66_scratch/iana/cipro_blast_hits/spark_KpSc_gene_hits.txt -t restable > spark_KpSc_uniqueHits.tsv
python /projects/js66/holtlab/sortContigsFromResFinderBlast.py /home/iamke/js66_scratch/iana/cipro_blast_hits/Alfred_KASPAH_gene_hits.txt -t restable > Alfred_KASPAH_uniqueHits.tsv
python /projects/js66/holtlab/sortContigsFromResFinderBlast.py /home/iamke/js66_scratch/iana/cipro_blast_hits/KpT7_gene_hits.txt -t restable > KpT7_uniqueHits.tsv
python /projects/js66/holtlab/sortContigsFromResFinderBlast.py /home/iamke/js66_scratch/iana/cipro_blast_hits/Wright_gene_hits.txt -t restable > Wright_uniqueHits.tsv
python /projects/js66/holtlab/sortContigsFromResFinderBlast.py /home/iamke/js66_scratch/iana/cipro_blast_hits/Torok_Vietnam_gene_hits.txt -t restable > Torok_Vietnam_uniqueHits.tsv
python /projects/js66/holtlab/sortContigsFromResFinderBlast.py /home/iamke/js66_scratch/iana/cipro_blast_hits/Stoesser_2013_gene_hits.txt -t restable > Stoesser_2013uniqueHits.tsv
python /projects/js66/holtlab/sortContigsFromResFinderBlast.py /home/iamke/js66_scratch/iana/cipro_blast_hits/Philippines_gene_hits.txt -t restable > Philippines_uniqueHits.tsv
python /projects/js66/holtlab/sortContigsFromResFinderBlast.py /home/iamke/js66_scratch/iana/cipro_blast_hits/Parkhill_gene_hits.txt -t restable > Parkhill_uniqueHits.tsv
python /projects/js66/holtlab/sortContigsFromResFinderBlast.py /home/iamke/js66_scratch/iana/cipro_blast_hits/NORKAB_gene_hits.txt -t restable > NORKAB_uniqueHits.tsv
python /projects/js66/holtlab/sortContigsFromResFinderBlast.py /home/iamke/js66_scratch/iana/cipro_blast_hits/Nigeria_GHRU_gene_hits.txt -t restable > Nigeria_GHRU_uniqueHits.tsv
python /projects/js66/holtlab/sortContigsFromResFinderBlast.py /home/iamke/js66_scratch/iana/cipro_blast_hits/milan_sanraffaele_2019_gene_hits.txt -t restable > milan_sanraffaele_2019_uniqueHits.tsv
python /projects/js66/holtlab/sortContigsFromResFinderBlast.py /home/iamke/js66_scratch/iana/cipro_blast_hits/Long_gene_hits.txt -t restable > Long_uniqueHits.tsv
python /projects/js66/holtlab/sortContigsFromResFinderBlast.py /home/iamke/js66_scratch/iana/cipro_blast_hits/KpNORM_gene_hits.txt -t restable > KpNORM_uniqueHits.tsv
python /projects/js66/holtlab/sortContigsFromResFinderBlast.py /home/iamke/js66_scratch/iana/cipro_blast_hits/KlebGAP_gene_hits.txt -t restable > KlebGAP_uniqueHits.tsv
python /projects/js66/holtlab/sortContigsFromResFinderBlast.py /home/iamke/js66_scratch/iana/cipro_blast_hits/India_GHRU_gene_hits.txt -t restable > India_GHRU_uniqueHits.tsv
python /projects/js66/holtlab/sortContigsFromResFinderBlast.py /home/iamke/js66_scratch/iana/cipro_blast_hits/Heinz_2019_gene_hits.txt -t restable > Heinz_2019_uniqueHits.tsv
python /projects/js66/holtlab/sortContigsFromResFinderBlast.py /home/iamke/js66_scratch/iana/cipro_blast_hits/Colombia_GHRU_gene_hits.txt -t restable > Colombia_GHRU_uniqueHits.tsv
python /projects/js66/holtlab/sortContigsFromResFinderBlast.py /home/iamke/js66_scratch/iana/cipro_blast_hits/bachman_2022_gene_hits.txt -t restable > bachman_2022_uniqueHits.tsv
python /projects/js66/holtlab/sortContigsFromResFinderBlast.py /home/iamke/js66_scratch/iana/cipro_blast_hits/Addenbrookes_gene_hits.txt -t restable > Addenbrookes_uniqueHits.tsv
python /projects/js66/holtlab/sortContigsFromResFinderBlast.py /home/iamke/js66_scratch/iana/cipro_blast_hits/Italy_MVK_MIC_gene_hits.txt -t restable > Italy_MVK_MIC_uniqueHits.tsv
python /projects/js66/holtlab/sortContigsFromResFinderBlast.py /home/iamke/js66_scratch/iana/cipro_blast_hits/Denmark_MVK_MIC_gene_hits.txt -t restable > Denmark_MVK_MIC_uniqueHits.tsv
python /projects/js66/holtlab/sortContigsFromResFinderBlast.py /home/iamke/js66_scratch/iana/cipro_blast_hits/Sunde_NVI_2021_gene_hits.txt -t restable > Sunde_NVI_2021_uniqueHits.tsv
