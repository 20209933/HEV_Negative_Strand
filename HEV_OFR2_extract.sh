#!/bin/bash
#SBATCH --job-name=ORF2_blast
#SBATCH --mail-type=END,FAIL
#SBATCH --mail-user=hannah.m.brown@ucdconnect.ie
#SBATCH --time=0-4:00
#SBATCH --cpus-per-task=5
#SBATCH --error=/home/people/20209933/scratch/HEV_negative_strand/logs/cons_extract__err_%j.log
#SBATCH --output=/home/people/20209933/scratch/HEV_negative_strand/logs/cons_extract_%j.log

# Load anaconda module
module load anaconda/3.5.2

source activate /home/people/20209933/tools/seqkit

seqkit subseq /home/people/20209933/scratch/HEV_negative_strand/data/HEV_Gt3_consensus.fasta  -r 7311:9296 > consensus_ORF2_extracted_region.fasta

echo ORF2 extraction completed