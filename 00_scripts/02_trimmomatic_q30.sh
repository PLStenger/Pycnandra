#!/usr/bin/env bash

# trimmomatic version 0.39
# trimmomatic manual : http://www.usadellab.org/cms/uploads/supplementary/Trimmomatic/TrimmomaticManual_V0.32.pdf

# pathways in cluster:
DATADIRECTORY_ITS=/scratch_vol1/fungi/Pycnandra/02_pooled_data/ITS
DATADIRECTORY_16S=/scratch_vol1/fungi/Pycnandra/02_pooled_data/16S
DATAOUTPUT_ITS=/scratch_vol1/fungi/Pycnandra/03_cleaned_data/DATAOUTPUT_ITS
DATAOUTPUT_16S=/scratch_vol1/fungi/Pycnandra/03_cleaned_data/DATAOUTPUT_16S

WORKING_DIRECTORY=/scratch_vol1/fungi/Pycnandra


# pathways in local:
#DATADIRECTORY_ITS=/Users/pierre-louisstenger/Documents/PostDoc_02_MetaBarcoding_IAC/02_Data/20_Pycnandra/Pycnandra/01_pooled/ITS
#DATADIRECTORY_16S=/Users/pierre-louisstenger/Documents/PostDoc_02_MetaBarcoding_IAC/02_Data/20_Pycnandra/Pycnandra/01_pooled/16S
#DATAOUTPUT_ITS=/Users/pierre-louisstenger/Documents/PostDoc_02_MetaBarcoding_IAC/02_Data/20_Pycnandra/Pycnandra/03_cleaned_data/DATAOUTPUT_ITS
#DATAOUTPUT_16S=/Users/pierre-louisstenger/Documents/PostDoc_02_MetaBarcoding_IAC/02_Data/20_Pycnandra/Pycnandra/03_cleaned_data/DATAOUTPUT_16S

eval "$(conda shell.bash hook)"
conda activate trimmomatic

ADAPTERFILE=/scratch_vol1/fungi/Pycnandra/98_database_files/adapters_sequences.fasta



cd $WORKING_DIRECTORY

# Make the directory (mkdir) only if not existe already(-p)
mkdir -p $DATAOUTPUT_ITS
mkdir -p $DATAOUTPUT_16S


# cat $ADAPTERFILE
#>Illumina_TruSeq_LT_R1 AGATCGGAAGAGCACACGTCTGAACTCCAGTCAC
#>Illumina_TruSeq_LT_R2 AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGT
#>truseq AGATCGGAAGAGC
#>nextera CTGTCTCTTATACACATC
#>small TGGAATTCTCGGGTGCCAAGG
#>ScriptSeqR1 AGATCGGAAGAGCACACGTCTGAAC
#>ScriptSeqR2 AGATCGGAAGAGCGTCGTGTAGGGA
#>TruSeqRibo AGATCGGAAGAGCACACGTCT

# Arguments :
# ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150

## For fungi :

cd $DATADIRECTORY_ITS

trimmomatic PE -Xmx60G -threads 8 -phred33 $DATADIRECTORY_ITS/Pa-1-10-1_S107_R1.fastq.gz $DATADIRECTORY_ITS/Pa-1-10-1_S107_R2.fastq.gz $DATAOUTPUT_ITS/Pa-1-10-1_S107_R1.paired.fastq.gz $DATAOUTPUT_ITS/Pa-1-10-1_S107_R1.single.fastq.gz $DATAOUTPUT_ITS/Pa-1-10-1_S107_R2.paired.fastq.gz $DATAOUTPUT_ITS/Pa-1-10-1_S107_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $DATADIRECTORY_ITS/Pa-1-5-1_S106_R1.fastq.gz $DATADIRECTORY_ITS/Pa-1-5-1_S106_R2.fastq.gz $DATAOUTPUT_ITS/Pa-1-5-1_S106_R1.paired.fastq.gz $DATAOUTPUT_ITS/Pa-1-5-1_S106_R1.single.fastq.gz $DATAOUTPUT_ITS/Pa-1-5-1_S106_R2.paired.fastq.gz $DATAOUTPUT_ITS/Pa-1-5-1_S106_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $DATADIRECTORY_ITS/Pa-2-10-1_S109_R1.fastq.gz $DATADIRECTORY_ITS/Pa-2-10-1_S109_R2.fastq.gz $DATAOUTPUT_ITS/Pa-2-10-1_S109_R1.paired.fastq.gz $DATAOUTPUT_ITS/Pa-2-10-1_S109_R1.single.fastq.gz $DATAOUTPUT_ITS/Pa-2-10-1_S109_R2.paired.fastq.gz $DATAOUTPUT_ITS/Pa-2-10-1_S109_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $DATADIRECTORY_ITS/Pa-2-5-1_S108_R1.fastq.gz $DATADIRECTORY_ITS/Pa-2-5-1_S108_R2.fastq.gz $DATAOUTPUT_ITS/Pa-2-5-1_S108_R1.paired.fastq.gz $DATAOUTPUT_ITS/Pa-2-5-1_S108_R1.single.fastq.gz $DATAOUTPUT_ITS/Pa-2-5-1_S108_R2.paired.fastq.gz $DATAOUTPUT_ITS/Pa-2-5-1_S108_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $DATADIRECTORY_ITS/Pa-3-10-1_S119_R1.fastq.gz $DATADIRECTORY_ITS/Pa-3-10-1_S119_R2.fastq.gz $DATAOUTPUT_ITS/Pa-3-10-1_S119_R1.paired.fastq.gz $DATAOUTPUT_ITS/Pa-3-10-1_S119_R1.single.fastq.gz $DATAOUTPUT_ITS/Pa-3-10-1_S119_R2.paired.fastq.gz $DATAOUTPUT_ITS/Pa-3-10-1_S119_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $DATADIRECTORY_ITS/Pa-3-5-1_S110_R1.fastq.gz $DATADIRECTORY_ITS/Pa-3-5-1_S110_R2.fastq.gz $DATAOUTPUT_ITS/Pa-3-5-1_S110_R1.paired.fastq.gz $DATAOUTPUT_ITS/Pa-3-5-1_S110_R1.single.fastq.gz $DATAOUTPUT_ITS/Pa-3-5-1_S110_R2.paired.fastq.gz $DATAOUTPUT_ITS/Pa-3-5-1_S110_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $DATADIRECTORY_ITS/Pa-4-10-1_S121_R1.fastq.gz $DATADIRECTORY_ITS/Pa-4-10-1_S121_R2.fastq.gz $DATAOUTPUT_ITS/Pa-4-10-1_S121_R1.paired.fastq.gz $DATAOUTPUT_ITS/Pa-4-10-1_S121_R1.single.fastq.gz $DATAOUTPUT_ITS/Pa-4-10-1_S121_R2.paired.fastq.gz $DATAOUTPUT_ITS/Pa-4-10-1_S121_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $DATADIRECTORY_ITS/Pa-4-5-1_S120_R1.fastq.gz $DATADIRECTORY_ITS/Pa-4-5-1_S120_R2.fastq.gz $DATAOUTPUT_ITS/Pa-4-5-1_S120_R1.paired.fastq.gz $DATAOUTPUT_ITS/Pa-4-5-1_S120_R1.single.fastq.gz $DATAOUTPUT_ITS/Pa-4-5-1_S120_R2.paired.fastq.gz $DATAOUTPUT_ITS/Pa-4-5-1_S120_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $DATADIRECTORY_ITS/Pa-5-10-1_S123_R1.fastq.gz $DATADIRECTORY_ITS/Pa-5-10-1_S123_R2.fastq.gz $DATAOUTPUT_ITS/Pa-5-10-1_S123_R1.paired.fastq.gz $DATAOUTPUT_ITS/Pa-5-10-1_S123_R1.single.fastq.gz $DATAOUTPUT_ITS/Pa-5-10-1_S123_R2.paired.fastq.gz $DATAOUTPUT_ITS/Pa-5-10-1_S123_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $DATADIRECTORY_ITS/Pa-5-5-1_S122_R1.fastq.gz $DATADIRECTORY_ITS/Pa-5-5-1_S122_R2.fastq.gz $DATAOUTPUT_ITS/Pa-5-5-1_S122_R1.paired.fastq.gz $DATAOUTPUT_ITS/Pa-5-5-1_S122_R1.single.fastq.gz $DATAOUTPUT_ITS/Pa-5-5-1_S122_R2.paired.fastq.gz $DATAOUTPUT_ITS/Pa-5-5-1_S122_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $DATADIRECTORY_ITS/Pa-6-10-1_S125_R1.fastq.gz $DATADIRECTORY_ITS/Pa-6-10-1_S125_R2.fastq.gz $DATAOUTPUT_ITS/Pa-6-10-1_S125_R1.paired.fastq.gz $DATAOUTPUT_ITS/Pa-6-10-1_S125_R1.single.fastq.gz $DATAOUTPUT_ITS/Pa-6-10-1_S125_R2.paired.fastq.gz $DATAOUTPUT_ITS/Pa-6-10-1_S125_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $DATADIRECTORY_ITS/Pa-6-5-1_S124_R1.fastq.gz $DATADIRECTORY_ITS/Pa-6-5-1_S124_R2.fastq.gz $DATAOUTPUT_ITS/Pa-6-5-1_S124_R1.paired.fastq.gz $DATAOUTPUT_ITS/Pa-6-5-1_S124_R1.single.fastq.gz $DATAOUTPUT_ITS/Pa-6-5-1_S124_R2.paired.fastq.gz $DATAOUTPUT_ITS/Pa-6-5-1_S124_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $DATADIRECTORY_ITS/Pf-1-10-1_S135_R1.fastq.gz $DATADIRECTORY_ITS/Pf-1-10-1_S135_R2.fastq.gz $DATAOUTPUT_ITS/Pf-1-10-1_S135_R1.paired.fastq.gz $DATAOUTPUT_ITS/Pf-1-10-1_S135_R1.single.fastq.gz $DATAOUTPUT_ITS/Pf-1-10-1_S135_R2.paired.fastq.gz $DATAOUTPUT_ITS/Pf-1-10-1_S135_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $DATADIRECTORY_ITS/Pf-1-5-1_S126_R1.fastq.gz $DATADIRECTORY_ITS/Pf-1-5-1_S126_R2.fastq.gz $DATAOUTPUT_ITS/Pf-1-5-1_S126_R1.paired.fastq.gz $DATAOUTPUT_ITS/Pf-1-5-1_S126_R1.single.fastq.gz $DATAOUTPUT_ITS/Pf-1-5-1_S126_R2.paired.fastq.gz $DATAOUTPUT_ITS/Pf-1-5-1_S126_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $DATADIRECTORY_ITS/Pf-2-10-1_S137_R1.fastq.gz $DATADIRECTORY_ITS/Pf-2-10-1_S137_R2.fastq.gz $DATAOUTPUT_ITS/Pf-2-10-1_S137_R1.paired.fastq.gz $DATAOUTPUT_ITS/Pf-2-10-1_S137_R1.single.fastq.gz $DATAOUTPUT_ITS/Pf-2-10-1_S137_R2.paired.fastq.gz $DATAOUTPUT_ITS/Pf-2-10-1_S137_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $DATADIRECTORY_ITS/Pf-2-5-1_S136_R1.fastq.gz $DATADIRECTORY_ITS/Pf-2-5-1_S136_R2.fastq.gz $DATAOUTPUT_ITS/Pf-2-5-1_S136_R1.paired.fastq.gz $DATAOUTPUT_ITS/Pf-2-5-1_S136_R1.single.fastq.gz $DATAOUTPUT_ITS/Pf-2-5-1_S136_R2.paired.fastq.gz $DATAOUTPUT_ITS/Pf-2-5-1_S136_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $DATADIRECTORY_ITS/Pf-3-10-1_S139_R1.fastq.gz $DATADIRECTORY_ITS/Pf-3-10-1_S139_R2.fastq.gz $DATAOUTPUT_ITS/Pf-3-10-1_S139_R1.paired.fastq.gz $DATAOUTPUT_ITS/Pf-3-10-1_S139_R1.single.fastq.gz $DATAOUTPUT_ITS/Pf-3-10-1_S139_R2.paired.fastq.gz $DATAOUTPUT_ITS/Pf-3-10-1_S139_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $DATADIRECTORY_ITS/Pf-3-5-1_S138_R1.fastq.gz $DATADIRECTORY_ITS/Pf-3-5-1_S138_R2.fastq.gz $DATAOUTPUT_ITS/Pf-3-5-1_S138_R1.paired.fastq.gz $DATAOUTPUT_ITS/Pf-3-5-1_S138_R1.single.fastq.gz $DATAOUTPUT_ITS/Pf-3-5-1_S138_R2.paired.fastq.gz $DATAOUTPUT_ITS/Pf-3-5-1_S138_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $DATADIRECTORY_ITS/Pf-4-10-1_S141_R1.fastq.gz $DATADIRECTORY_ITS/Pf-4-10-1_S141_R2.fastq.gz $DATAOUTPUT_ITS/Pf-4-10-1_S141_R1.paired.fastq.gz $DATAOUTPUT_ITS/Pf-4-10-1_S141_R1.single.fastq.gz $DATAOUTPUT_ITS/Pf-4-10-1_S141_R2.paired.fastq.gz $DATAOUTPUT_ITS/Pf-4-10-1_S141_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $DATADIRECTORY_ITS/Pf-4-5-1_S140_R1.fastq.gz $DATADIRECTORY_ITS/Pf-4-5-1_S140_R2.fastq.gz $DATAOUTPUT_ITS/Pf-4-5-1_S140_R1.paired.fastq.gz $DATAOUTPUT_ITS/Pf-4-5-1_S140_R1.single.fastq.gz $DATAOUTPUT_ITS/Pf-4-5-1_S140_R2.paired.fastq.gz $DATAOUTPUT_ITS/Pf-4-5-1_S140_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $DATADIRECTORY_ITS/Pf-5-10-1_S151_R1.fastq.gz $DATADIRECTORY_ITS/Pf-5-10-1_S151_R2.fastq.gz $DATAOUTPUT_ITS/Pf-5-10-1_S151_R1.paired.fastq.gz $DATAOUTPUT_ITS/Pf-5-10-1_S151_R1.single.fastq.gz $DATAOUTPUT_ITS/Pf-5-10-1_S151_R2.paired.fastq.gz $DATAOUTPUT_ITS/Pf-5-10-1_S151_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $DATADIRECTORY_ITS/Pf-5-5-1_S142_R1.fastq.gz $DATADIRECTORY_ITS/Pf-5-5-1_S142_R2.fastq.gz $DATAOUTPUT_ITS/Pf-5-5-1_S142_R1.paired.fastq.gz $DATAOUTPUT_ITS/Pf-5-5-1_S142_R1.single.fastq.gz $DATAOUTPUT_ITS/Pf-5-5-1_S142_R2.paired.fastq.gz $DATAOUTPUT_ITS/Pf-5-5-1_S142_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $DATADIRECTORY_ITS/Pf-6-10-1_S153_R1.fastq.gz $DATADIRECTORY_ITS/Pf-6-10-1_S153_R2.fastq.gz $DATAOUTPUT_ITS/Pf-6-10-1_S153_R1.paired.fastq.gz $DATAOUTPUT_ITS/Pf-6-10-1_S153_R1.single.fastq.gz $DATAOUTPUT_ITS/Pf-6-10-1_S153_R2.paired.fastq.gz $DATAOUTPUT_ITS/Pf-6-10-1_S153_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $DATADIRECTORY_ITS/Pf-6-5-1_S152_R1.fastq.gz $DATADIRECTORY_ITS/Pf-6-5-1_S152_R2.fastq.gz $DATAOUTPUT_ITS/Pf-6-5-1_S152_R1.paired.fastq.gz $DATAOUTPUT_ITS/Pf-6-5-1_S152_R1.single.fastq.gz $DATAOUTPUT_ITS/Pf-6-5-1_S152_R2.paired.fastq.gz $DATAOUTPUT_ITS/Pf-6-5-1_S152_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $DATADIRECTORY_ITS/PYC-NEG_S154_R1.fastq.gz $DATADIRECTORY_ITS/PYC-NEG_S154_R2.fastq.gz $DATAOUTPUT_ITS/PYC-NEG_S154_R1.paired.fastq.gz $DATAOUTPUT_ITS/PYC-NEG_S154_R1.single.fastq.gz $DATAOUTPUT_ITS/PYC-NEG_S154_R2.paired.fastq.gz $DATAOUTPUT_ITS/PYC-NEG_S154_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
# For bacteria :

cd $DATADIRECTORY_16S

trimmomatic PE -Xmx60G -threads 8 -phred33 $DATADIRECTORY_16S/Pa-1-10-1_S107_R1.fastq.gz $DATADIRECTORY_16S/Pa-1-10-1_S107_R2.fastq.gz $DATAOUTPUT_16S/Pa-1-10-1_S107_R1.paired.fastq.gz $DATAOUTPUT_16S/Pa-1-10-1_S107_R1.single.fastq.gz $DATAOUTPUT_16S/Pa-1-10-1_S107_R2.paired.fastq.gz $DATAOUTPUT_16S/Pa-1-10-1_S107_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $DATADIRECTORY_16S/Pa-1-5-1_S106_R1.fastq.gz $DATADIRECTORY_16S/Pa-1-5-1_S106_R2.fastq.gz $DATAOUTPUT_16S/Pa-1-5-1_S106_R1.paired.fastq.gz $DATAOUTPUT_16S/Pa-1-5-1_S106_R1.single.fastq.gz $DATAOUTPUT_16S/Pa-1-5-1_S106_R2.paired.fastq.gz $DATAOUTPUT_16S/Pa-1-5-1_S106_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $DATADIRECTORY_16S/Pa-2-10-1_S109_R1.fastq.gz $DATADIRECTORY_16S/Pa-2-10-1_S109_R2.fastq.gz $DATAOUTPUT_16S/Pa-2-10-1_S109_R1.paired.fastq.gz $DATAOUTPUT_16S/Pa-2-10-1_S109_R1.single.fastq.gz $DATAOUTPUT_16S/Pa-2-10-1_S109_R2.paired.fastq.gz $DATAOUTPUT_16S/Pa-2-10-1_S109_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $DATADIRECTORY_16S/Pa-2-5-1_S108_R1.fastq.gz $DATADIRECTORY_16S/Pa-2-5-1_S108_R2.fastq.gz $DATAOUTPUT_16S/Pa-2-5-1_S108_R1.paired.fastq.gz $DATAOUTPUT_16S/Pa-2-5-1_S108_R1.single.fastq.gz $DATAOUTPUT_16S/Pa-2-5-1_S108_R2.paired.fastq.gz $DATAOUTPUT_16S/Pa-2-5-1_S108_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $DATADIRECTORY_16S/Pa-3-10-1_S119_R1.fastq.gz $DATADIRECTORY_16S/Pa-3-10-1_S119_R2.fastq.gz $DATAOUTPUT_16S/Pa-3-10-1_S119_R1.paired.fastq.gz $DATAOUTPUT_16S/Pa-3-10-1_S119_R1.single.fastq.gz $DATAOUTPUT_16S/Pa-3-10-1_S119_R2.paired.fastq.gz $DATAOUTPUT_16S/Pa-3-10-1_S119_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $DATADIRECTORY_16S/Pa-3-5-1_S110_R1.fastq.gz $DATADIRECTORY_16S/Pa-3-5-1_S110_R2.fastq.gz $DATAOUTPUT_16S/Pa-3-5-1_S110_R1.paired.fastq.gz $DATAOUTPUT_16S/Pa-3-5-1_S110_R1.single.fastq.gz $DATAOUTPUT_16S/Pa-3-5-1_S110_R2.paired.fastq.gz $DATAOUTPUT_16S/Pa-3-5-1_S110_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $DATADIRECTORY_16S/Pa-4-10-1_S121_R1.fastq.gz $DATADIRECTORY_16S/Pa-4-10-1_S121_R2.fastq.gz $DATAOUTPUT_16S/Pa-4-10-1_S121_R1.paired.fastq.gz $DATAOUTPUT_16S/Pa-4-10-1_S121_R1.single.fastq.gz $DATAOUTPUT_16S/Pa-4-10-1_S121_R2.paired.fastq.gz $DATAOUTPUT_16S/Pa-4-10-1_S121_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $DATADIRECTORY_16S/Pa-4-5-1_S120_R1.fastq.gz $DATADIRECTORY_16S/Pa-4-5-1_S120_R2.fastq.gz $DATAOUTPUT_16S/Pa-4-5-1_S120_R1.paired.fastq.gz $DATAOUTPUT_16S/Pa-4-5-1_S120_R1.single.fastq.gz $DATAOUTPUT_16S/Pa-4-5-1_S120_R2.paired.fastq.gz $DATAOUTPUT_16S/Pa-4-5-1_S120_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $DATADIRECTORY_16S/Pa-5-10-1_S123_R1.fastq.gz $DATADIRECTORY_16S/Pa-5-10-1_S123_R2.fastq.gz $DATAOUTPUT_16S/Pa-5-10-1_S123_R1.paired.fastq.gz $DATAOUTPUT_16S/Pa-5-10-1_S123_R1.single.fastq.gz $DATAOUTPUT_16S/Pa-5-10-1_S123_R2.paired.fastq.gz $DATAOUTPUT_16S/Pa-5-10-1_S123_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $DATADIRECTORY_16S/Pa-5-5-1_S122_R1.fastq.gz $DATADIRECTORY_16S/Pa-5-5-1_S122_R2.fastq.gz $DATAOUTPUT_16S/Pa-5-5-1_S122_R1.paired.fastq.gz $DATAOUTPUT_16S/Pa-5-5-1_S122_R1.single.fastq.gz $DATAOUTPUT_16S/Pa-5-5-1_S122_R2.paired.fastq.gz $DATAOUTPUT_16S/Pa-5-5-1_S122_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $DATADIRECTORY_16S/Pa-6-10-1_S125_R1.fastq.gz $DATADIRECTORY_16S/Pa-6-10-1_S125_R2.fastq.gz $DATAOUTPUT_16S/Pa-6-10-1_S125_R1.paired.fastq.gz $DATAOUTPUT_16S/Pa-6-10-1_S125_R1.single.fastq.gz $DATAOUTPUT_16S/Pa-6-10-1_S125_R2.paired.fastq.gz $DATAOUTPUT_16S/Pa-6-10-1_S125_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $DATADIRECTORY_16S/Pa-6-5-1_S124_R1.fastq.gz $DATADIRECTORY_16S/Pa-6-5-1_S124_R2.fastq.gz $DATAOUTPUT_16S/Pa-6-5-1_S124_R1.paired.fastq.gz $DATAOUTPUT_16S/Pa-6-5-1_S124_R1.single.fastq.gz $DATAOUTPUT_16S/Pa-6-5-1_S124_R2.paired.fastq.gz $DATAOUTPUT_16S/Pa-6-5-1_S124_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $DATADIRECTORY_16S/Pf-1-10-1_S135_R1.fastq.gz $DATADIRECTORY_16S/Pf-1-10-1_S135_R2.fastq.gz $DATAOUTPUT_16S/Pf-1-10-1_S135_R1.paired.fastq.gz $DATAOUTPUT_16S/Pf-1-10-1_S135_R1.single.fastq.gz $DATAOUTPUT_16S/Pf-1-10-1_S135_R2.paired.fastq.gz $DATAOUTPUT_16S/Pf-1-10-1_S135_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $DATADIRECTORY_16S/Pf-1-5-1_S126_R1.fastq.gz $DATADIRECTORY_16S/Pf-1-5-1_S126_R2.fastq.gz $DATAOUTPUT_16S/Pf-1-5-1_S126_R1.paired.fastq.gz $DATAOUTPUT_16S/Pf-1-5-1_S126_R1.single.fastq.gz $DATAOUTPUT_16S/Pf-1-5-1_S126_R2.paired.fastq.gz $DATAOUTPUT_16S/Pf-1-5-1_S126_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $DATADIRECTORY_16S/Pf-2-10-1_S137_R1.fastq.gz $DATADIRECTORY_16S/Pf-2-10-1_S137_R2.fastq.gz $DATAOUTPUT_16S/Pf-2-10-1_S137_R1.paired.fastq.gz $DATAOUTPUT_16S/Pf-2-10-1_S137_R1.single.fastq.gz $DATAOUTPUT_16S/Pf-2-10-1_S137_R2.paired.fastq.gz $DATAOUTPUT_16S/Pf-2-10-1_S137_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $DATADIRECTORY_16S/Pf-2-5-1_S136_R1.fastq.gz $DATADIRECTORY_16S/Pf-2-5-1_S136_R2.fastq.gz $DATAOUTPUT_16S/Pf-2-5-1_S136_R1.paired.fastq.gz $DATAOUTPUT_16S/Pf-2-5-1_S136_R1.single.fastq.gz $DATAOUTPUT_16S/Pf-2-5-1_S136_R2.paired.fastq.gz $DATAOUTPUT_16S/Pf-2-5-1_S136_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $DATADIRECTORY_16S/Pf-3-10-1_S139_R1.fastq.gz $DATADIRECTORY_16S/Pf-3-10-1_S139_R2.fastq.gz $DATAOUTPUT_16S/Pf-3-10-1_S139_R1.paired.fastq.gz $DATAOUTPUT_16S/Pf-3-10-1_S139_R1.single.fastq.gz $DATAOUTPUT_16S/Pf-3-10-1_S139_R2.paired.fastq.gz $DATAOUTPUT_16S/Pf-3-10-1_S139_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $DATADIRECTORY_16S/Pf-3-5-1_S138_R1.fastq.gz $DATADIRECTORY_16S/Pf-3-5-1_S138_R2.fastq.gz $DATAOUTPUT_16S/Pf-3-5-1_S138_R1.paired.fastq.gz $DATAOUTPUT_16S/Pf-3-5-1_S138_R1.single.fastq.gz $DATAOUTPUT_16S/Pf-3-5-1_S138_R2.paired.fastq.gz $DATAOUTPUT_16S/Pf-3-5-1_S138_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $DATADIRECTORY_16S/Pf-4-10-1_S141_R1.fastq.gz $DATADIRECTORY_16S/Pf-4-10-1_S141_R2.fastq.gz $DATAOUTPUT_16S/Pf-4-10-1_S141_R1.paired.fastq.gz $DATAOUTPUT_16S/Pf-4-10-1_S141_R1.single.fastq.gz $DATAOUTPUT_16S/Pf-4-10-1_S141_R2.paired.fastq.gz $DATAOUTPUT_16S/Pf-4-10-1_S141_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $DATADIRECTORY_16S/Pf-4-5-1_S140_R1.fastq.gz $DATADIRECTORY_16S/Pf-4-5-1_S140_R2.fastq.gz $DATAOUTPUT_16S/Pf-4-5-1_S140_R1.paired.fastq.gz $DATAOUTPUT_16S/Pf-4-5-1_S140_R1.single.fastq.gz $DATAOUTPUT_16S/Pf-4-5-1_S140_R2.paired.fastq.gz $DATAOUTPUT_16S/Pf-4-5-1_S140_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $DATADIRECTORY_16S/Pf-5-10-1_S151_R1.fastq.gz $DATADIRECTORY_16S/Pf-5-10-1_S151_R2.fastq.gz $DATAOUTPUT_16S/Pf-5-10-1_S151_R1.paired.fastq.gz $DATAOUTPUT_16S/Pf-5-10-1_S151_R1.single.fastq.gz $DATAOUTPUT_16S/Pf-5-10-1_S151_R2.paired.fastq.gz $DATAOUTPUT_16S/Pf-5-10-1_S151_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $DATADIRECTORY_16S/Pf-5-5-1_S142_R1.fastq.gz $DATADIRECTORY_16S/Pf-5-5-1_S142_R2.fastq.gz $DATAOUTPUT_16S/Pf-5-5-1_S142_R1.paired.fastq.gz $DATAOUTPUT_16S/Pf-5-5-1_S142_R1.single.fastq.gz $DATAOUTPUT_16S/Pf-5-5-1_S142_R2.paired.fastq.gz $DATAOUTPUT_16S/Pf-5-5-1_S142_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $DATADIRECTORY_16S/Pf-6-10-1_S153_R1.fastq.gz $DATADIRECTORY_16S/Pf-6-10-1_S153_R2.fastq.gz $DATAOUTPUT_16S/Pf-6-10-1_S153_R1.paired.fastq.gz $DATAOUTPUT_16S/Pf-6-10-1_S153_R1.single.fastq.gz $DATAOUTPUT_16S/Pf-6-10-1_S153_R2.paired.fastq.gz $DATAOUTPUT_16S/Pf-6-10-1_S153_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $DATADIRECTORY_16S/Pf-6-5-1_S152_R1.fastq.gz $DATADIRECTORY_16S/Pf-6-5-1_S152_R2.fastq.gz $DATAOUTPUT_16S/Pf-6-5-1_S152_R1.paired.fastq.gz $DATAOUTPUT_16S/Pf-6-5-1_S152_R1.single.fastq.gz $DATAOUTPUT_16S/Pf-6-5-1_S152_R2.paired.fastq.gz $DATAOUTPUT_16S/Pf-6-5-1_S152_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $DATADIRECTORY_16S/PYC-NEG_S154_R1.fastq.gz $DATADIRECTORY_16S/PYC-NEG_S154_R2.fastq.gz $DATAOUTPUT_16S/PYC-NEG_S154_R1.paired.fastq.gz $DATAOUTPUT_16S/PYC-NEG_S154_R1.single.fastq.gz $DATAOUTPUT_16S/PYC-NEG_S154_R2.paired.fastq.gz $DATAOUTPUT_16S/PYC-NEG_S154_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150