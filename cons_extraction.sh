#!/bin/bash
#SBATCH --job-name=cons_extract
#SBATCH --mail-type=END,FAIL
#SBATCH --mail-user=hannah.m.brown@ucdconnect.ie
#SBATCH --time=0-4:00
#SBATCH --cpus-per-task=5
#SBATCH --error=/home/people/20209933/scratch/HEV_negative_strand/logs/cons_extract__err_%j.log
#SBATCH --output=/home/people/20209933/scratch/HEV_negative_strand/logs/cons_extract_%j.log

# Load anaconda module
module load anaconda/3.5.2

# Activate your conda environment
source activate /home/people/20209933/tools/emboss_env

_cons -sequence /home/people/20209933/scratch/HEV_negative_strand/HEV_Gt3_sequence.fasta -outseq HEV_Gt3_consensus.fasta

conda deactivate
echo Consenseus extraction completed