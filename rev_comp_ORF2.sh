#!/bin/bash
#SBATCH --job-name=ORF2_rev_comp
#SBATCH --mail-type=END,FAIL
#SBATCH --mail-user=hannah.m.brown@ucdconnect.ie
#SBATCH --time=0-4:00
#SBATCH --cpus-per-task=5
#SBATCH --error=/home/people/20209933/scratch/HEV_negative_strand/logs/cons_extract__err_%j.log
#SBATCH --output=/home/people/20209933/scratch/HEV_negative_strand/logs/cons_extract_%j.log

# Load anaconda module
module load anaconda/3.5.2

source activate /home/people/20209933/tools/seqkit

seqkit seq -r -p -t DNA /home/people/20209933/scratch/HEV_negative_strand/data/consensus_ORF2_extracted_region.fasta > reverse_complemented.fasta

cat /home/people/20209933/scratch/HEV_negative_strand/data/reverse_complemented.fasta | tr 'T' 'U' > RNA_reverse_complemented.fasta

echo reverse complement completed