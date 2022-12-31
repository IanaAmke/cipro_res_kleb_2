#!/bin/bash
#SBATCH --job-name=filter_gyrA_parc
#SBATCH --account=js66
#SBATCH --time=08:00:00
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=20
#SBATCH --mem-per-cpu=32000
#SBATCH --mail-type=begin
#SBATCH --mail-type=end
#SBATCH --mail-type=fail
#SBATCH --mail-user=Iana.Amke1@lshtm.ac.uk

# load modules on M3
module load python/3.9.10-linux-centos7-haswell-gcc10.2.0

source /home/iamke/python_env/bin/activate

# extract mismatch sequences
python /home/iamke/js66_scratch/iana/extracted_sequences/extract_gyra_blast_mismatch.py

deactivate
