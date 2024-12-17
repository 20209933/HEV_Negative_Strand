#!/bin/bash
#SBATCH --job-name=ORF2_extract
#SBATCH --mail-type=END,FAIL
#SBATCH --mail-user=hannah.m.brown@ucdconnect.ie
#SBATCH --time=0-4:00
#SBATCH --cpus-per-task=5
#SBATCH --error=/home/people/20209933/scratch/HEV_negative_strand/logs/cons_extract__err_%j.log
#SBATCH --output=/home/people/20209933/scratch/HEV_negative_strand/logs/cons_extract_%j.log

# Load anaconda module
module load anaconda/3.5.2

source activate /home/people/20209933/tools/seqkit

blastn -query /home/people/20209933/scratch/HEV_negative_strand/data/HEV_Gt3_consensus.fasta -subject /home/people/20209933/scratch/HEV_negative_strand/AB369687_ref_seq.fasta -outfmt 6 > AB369687_output.tsv

echo ORF2 blast completed