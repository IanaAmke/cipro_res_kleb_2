#!/bin/bash
#SBATCH --job-name=copy_fasta
#SBATCH --account=js66
#SBATCH --time=01:00:00
#SBATCH --ntasks=1
#SBATCH --mem-per-cpu=4096
#SBATCH --cpus-per-task=1

cp -r /home/iamke/js66/data/klebsiella/pneumoniae/baker_addenbrookes/assemblies/fasta/ /home/iamke/js66_scratch/iana/Addenbrookes_fasta/
cp -r /home/iamke/js66/data/klebsiella/pneumoniae/bachman_2022/assemblies/fasta/ /home/iamke/js66_scratch/iana/bachman_2022_fasta/
cp -r /home/iamke/js66/data/klebsiella/pneumoniae/donado-godoy_colombia_GHRU/assemblies/fasta/ /home/iamke/js66_scratch/iana/Colombia_GHRU_fasta/
cp -r /home/iamke/js66/data/klebsiella/pneumoniae/heinz_pakistan_2019/assemblies/fasta/ /home/iamke/js66_scratch/iana/Heinz_2019_fasta/
cp -r /home/iamke/js66/data/klebsiella/pneumoniae/ravikumar_india_GHRU/assemblies/fasta/ /home/iamke/js66_scratch/iana/India_GHRU_fasta/
cp -r /home/iamke/js66/data/klebsiella/pneumoniae/KLEBGAP_VI/assemblies/fasta/ /home/iamke/js66_scratch/iana/KlebGAP_fasta/
cp -r /home/iamke/js66/data/klebsiella/pneumoniae/KpNORM_urine/assemblies/fasta/ /home/iamke/js66_scratch/iana/KpNORM_fasta/
cp -r /home/iamke/js66/data/klebsiella/pneumoniae/long2017_all/assemblies/fasta/ /home/iamke/js66_scratch/iana/Long_fasta/
cp -r /home/iamke/js66/data/klebsiella/pneumoniae/milan_sanraffaele_2019/assemblies/fasta/ /home/iamke/js66_scratch/iana/milan_sanraffaele_2019_fasta/
cp -r /home/iamke/js66/data/klebsiella/pneumoniae/okeke_nigeria_GHRU/assemblies/fasta/ /home/iamke/js66_scratch/iana/Nigeria_GHRU_fasta/
cp -r /home/iamke/js66/data/klebsiella/pneumoniae/NORKAB/assemblies/fasta/ /home/iamke/js66_scratch/iana/NORKAB_fasta/
cp -r /home/iamke/js66/data/klebsiella/pneumoniae/parkhill2017/assemblies/fasta/ /home/iamke/js66_scratch/iana/Parkhill_fasta/
cp -r /home/iamke/js66/data/klebsiella/pneumoniae/philippines_GHRU/assemblies/fasta/ /home/iamke/js66_scratch/iana/Philippines_fasta/
cp -r /home/iamke/js66/data/klebsiella/pneumoniae/stoesser2013/assemblies/fasta/ /home/iamke/js66_scratch/iana/Stoesser_2013_fasta/
cp -r /home/iamke/js66/data/klebsiella/pneumoniae/torok_vietnam_2020/assemblies/fasta/ /home/iamke/js66_scratch/iana/Torok_Vietnam_fasta/
cp -r /home/iamke/js66/data/klebsiella/pneumoniae/wright_ORF/assemblies/fasta/ /home/iamke/js66_scratch/iana/Wright_fasta/
cp -r /home/iamke/js66/data/klebsiella/pneumoniae/tromso_T7_carriage/assemblies/ /home/iamke/js66_scratch/iana/KpT7_fasta/
cp -r /home/iamke/js66/data/klebsiella/pneumoniae/Ligowska-Marzeta_SSI_MVK/assemblies/fasta/ /home/iamke/js66_scratch/iana/Denmark_MVK_MIC_fasta/
cp -r /home/iamke/js66/data/klebsiella/pneumoniae/sunde_NVI_2021/assemblies/fasta/ /home/iamke/js66_scratch/iana/Sunde_NVI_2021_fasta/
cp -r /home/iamke/js66/data/klebsiella/pneumoniae/cornacchia_MVK/assemblies/fasta/ /home/iamke/js66_scratch/iana/Italy_MVK_MIC_fasta/
cp -r /home/iamke/js66/data/klebsiella/pneumoniae/spark_KpSC/assemblies/phenotype /home/iamke/js66_scratch/iana/spark_KpSc_fasta/
cp -r /home/iamke/js66/data/klebsiella/pneumoniae/sands2021_BARNARDS/assemblies/ /home/iamke/js66_scratch/iana/sands2021_BARNARDS_fasta/
cp -r /home/iamke/js66/data/klebsiella/pneumoniae/sands2021_arthropods/assemblies/fasta/ /home/iamke/js66_scratch/iana/sands2021_arthropods_fasta/
cp -r /home/iamke/js66/data/klebsiella/pneumoniae/huynh2020/assemblies/ /home/iamke/js66_scratch/iana/Huynh2020_fasta/
cp -r /home/iamke/js66/data/klebsiella/pneumoniae/egli_switzerland/assemblies/fasta/ /home/iamke/js66_scratch/iana/Egli_MIC_fasta/
cp -r /home/iamke/js66/data/klebsiella/pneumoniae/kaspah_clinical_assemblies/ /home/iamke/js66_scratch/iana/Alfred_KASPAH_fasta/
