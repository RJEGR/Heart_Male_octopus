#!/bin/bash
#SBATCH --job-name=Trimmomatic
#SBATCH -N 1
#SBATCH --mem=12GB
#SBATCH --ntasks-per-node=20

TRIMM=/LUSTRE/apps/bioinformatica/Trimmomatic-0.40/

trimmomatic="java -jar $TRIMM/trimmomatic-0.40-rc1.jar"

$trimmomatic PE -threads 20 -phred33  -trimlog trim.log -summary trim.summary CSI_M_PR_AD_24_1_F.fastq.gz CSI_M_PR_AD_24_1_R.fastq.gz CSI_M_PR_AD_24_1_F.P.qtrim.fq.gz CSI_M_PR_AD_24_1_F.UP.qtrim.fq.gz CSI_M_PR_AD_24_1_R.P.qtrim.fq.gz CSI_M_PR_AD_24_1_R.UP.qtrim.fq.gz ILLUMINACLIP:TruSeq3-PE-2.fa:2:30:10 SLIDINGWINDOW:4:15 MINLEN:36 LEADING:5 TRAILING:5

exit

