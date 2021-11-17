#!/usr/bin/env bash

# pathways in cluster:
DATADIRECTORY_16S=/scratch_vol1/fungi/Pycnandra/01_raw_data/16S
OUTPUT_16S=/scratch_vol1/fungi/Pycnandra/02_pooled_data/16S

DATADIRECTORY_ITS=/scratch_vol1/fungi/Pycnandra/01_raw_data/ITS
OUTPUT_ITS=/scratch_vol1/fungi/Pycnandra/02_pooled_data/ITS

WORKING_DIRECTORY=/scratch_vol1/fungi/Pycnandra

# pathways in local:
#DATADIRECTORY_16S=/Users/pierre-louisstenger/Documents/PostDoc_02_MetaBarcoding_IAC/02_Data/20_Pycnandra/Pycnandra/00_raw_data/16S
#OUTPUT_16S=/Users/pierre-louisstenger/Documents/PostDoc_02_MetaBarcoding_IAC/02_Data/20_Pycnandra/Pycnandra/01_pooled/16S

#DATADIRECTORY_ITS=/Users/pierre-louisstenger/Documents/PostDoc_02_MetaBarcoding_IAC/02_Data/20_Pycnandra/Pycnandra/00_raw_data/ITS
#OUTPUT_ITS=/Users/pierre-louisstenger/Documents/PostDoc_02_MetaBarcoding_IAC/02_Data/20_Pycnandra/Pycnandra/01_pooled/ITS


cd $WORKING_DIRECTORY

# Make the directory (mkdir) only if not existe already(-p)
mkdir -p $OUTPUT_ITS
mkdir -p $OUTPUT_16S

cd $DATADIRECTORY_16S

# Pour une raison encore incconue : 
# 
# Pa-1-10-1_S107_L001_R1_001_fastqc bon
# Pa-1-10-1_S107_L001_I2_001_fastqc pas bon
# Pa-1-10-1_S107_L001_I1_001_fastqc pas bon
# Pa-1-10-1_S107_L001_R2_001_fastqc bon 
# 
# Pa-1-5-1_S106_L001_I1_001_fastqc pas bon
# Pa-1-5-1_S106_L001_I2_001_fastqc pas bon
# Pa-1-5-1_S106_L001_R1_001_fastqc bon
# Pa-1-5-1_S106_L001_R2_001_fastqc bon
# 
# Pa-2-10-1_S109_L001_I1_001_fastqc pas bon
# Pa-2-10-1_S109_L001_I2_001_fastqc pas bon
# Pa-2-10-1_S109_L001_R1_001_fastqc bon
# Pa-2-10-1_S109_L001_R2_001_fastqc bon

#  cat Pa-1-5-1_S106_L001_I1_001.fastq.gz Pa-1-5-1_S106_L001_R1_001.fastq.gz > $OUTPUT_16S/Pa-1-5-1_S106_R1.fastq.gz
#  cat Pa-1-5-1_S106_L001_R2_001.fastq.gz Pa-1-5-1_S106_L001_I2_001.fastq.gz > $OUTPUT_16S/Pa-1-5-1_S106_R2.fastq.gz

  cat Pa-1-5-1_S106_L001_R1_001.fastq.gz > $OUTPUT_16S/Pa-1-5-1_S106_R1.fastq.gz
  cat Pa-1-5-1_S106_L001_R2_001.fastq.gz > $OUTPUT_16S/Pa-1-5-1_S106_R2.fastq.gz


# cat Pa-1-10-1_S107_L001_I1_001.fastq.gz Pa-1-10-1_S107_L001_R1_001.fastq.gz > $OUTPUT_16S/Pa-1-10-1_S107_R1.fastq.gz
# cat Pa-1-10-1_S107_L001_R2_001.fastq.gz Pa-1-10-1_S107_L001_I2_001.fastq.gz > $OUTPUT_16S/Pa-1-10-1_S107_R2.fastq.gz

cat Pa-1-10-1_S107_L001_R1_001.fastq.gz > $OUTPUT_16S/Pa-1-10-1_S107_R1.fastq.gz
cat Pa-1-10-1_S107_L001_R2_001.fastq.gz > $OUTPUT_16S/Pa-1-10-1_S107_R2.fastq.gz

  cat Pa-2-5-1_S108_L001_I1_001.fastq.gz Pa-2-5-1_S108_L001_R1_001.fastq.gz > $OUTPUT_16S/Pa-2-5-1_S108_R1.fastq.gz
  cat Pa-2-5-1_S108_L001_I2_001.fastq.gz Pa-2-5-1_S108_L001_R2_001.fastq.gz > $OUTPUT_16S/Pa-2-5-1_S108_R2.fastq.gz
  
# cat Pa-2-10-1_S109_L001_I1_001.fastq.gz Pa-2-10-1_S109_L001_R1_001.fastq.gz > $OUTPUT_16S/Pa-2-10-1_S109_R1.fastq.gz
# cat Pa-2-10-1_S109_L001_R2_001.fastq.gz Pa-2-10-1_S109_L001_I2_001.fastq.gz > $OUTPUT_16S/Pa-2-10-1_S109_R2.fastq.gz

cat Pa-2-10-1_S109_L001_R1_001.fastq.gz > $OUTPUT_16S/Pa-2-10-1_S109_R1.fastq.gz
cat Pa-2-10-1_S109_L001_R2_001.fastq.gz > $OUTPUT_16S/Pa-2-10-1_S109_R2.fastq.gz

  cat Pa-3-5-1_S110_L001_I1_001.fastq.gz Pa-3-5-1_S110_L001_R1_001.fastq.gz > $OUTPUT_16S/Pa-3-5-1_S110_R1.fastq.gz
  cat Pa-3-5-1_S110_L001_I2_001.fastq.gz Pa-3-5-1_S110_L001_R2_001.fastq.gz > $OUTPUT_16S/Pa-3-5-1_S110_R2.fastq.gz
cat Pa-3-10-1_S119_L001_I1_001.fastq.gz Pa-3-10-1_S119_L001_R1_001.fastq.gz > $OUTPUT_16S/Pa-3-10-1_S119_R1.fastq.gz
cat Pa-3-10-1_S119_L001_I2_001.fastq.gz Pa-3-10-1_S119_L001_R2_001.fastq.gz > $OUTPUT_16S/Pa-3-10-1_S119_R2.fastq.gz
  cat Pa-4-5-1_S120_L001_I1_001.fastq.gz Pa-4-5-1_S120_L001_R1_001.fastq.gz > $OUTPUT_16S/Pa-4-5-1_S120_R1.fastq.gz
  cat Pa-4-5-1_S120_L001_I2_001.fastq.gz Pa-4-5-1_S120_L001_R2_001.fastq.gz > $OUTPUT_16S/Pa-4-5-1_S120_R2.fastq.gz
cat Pa-4-10-1_S121_L001_I1_001.fastq.gz Pa-4-10-1_S121_L001_R1_001.fastq.gz > $OUTPUT_16S/Pa-4-10-1_S121_R1.fastq.gz
cat Pa-4-10-1_S121_L001_I2_001.fastq.gz Pa-4-10-1_S121_L001_R2_001.fastq.gz > $OUTPUT_16S/Pa-4-10-1_S121_R2.fastq.gz
  cat Pa-5-5-1_S122_L001_I1_001.fastq.gz Pa-5-5-1_S122_L001_R1_001.fastq.gz > $OUTPUT_16S/Pa-5-5-1_S122_R1.fastq.gz
  cat Pa-5-5-1_S122_L001_I2_001.fastq.gz Pa-5-5-1_S122_L001_R2_001.fastq.gz > $OUTPUT_16S/Pa-5-5-1_S122_R2.fastq.gz
cat Pa-5-10-1_S123_L001_I1_001.fastq.gz Pa-5-10-1_S123_L001_R1_001.fastq.gz > $OUTPUT_16S/Pa-5-10-1_S123_R1.fastq.gz
cat Pa-5-10-1_S123_L001_I2_001.fastq.gz Pa-5-10-1_S123_L001_R2_001.fastq.gz > $OUTPUT_16S/Pa-5-10-1_S123_R2.fastq.gz
  cat Pa-6-5-1_S124_L001_I1_001.fastq.gz Pa-6-5-1_S124_L001_R1_001.fastq.gz > $OUTPUT_16S/Pa-6-5-1_S124_R1.fastq.gz
  cat Pa-6-5-1_S124_L001_I2_001.fastq.gz Pa-6-5-1_S124_L001_R2_001.fastq.gz > $OUTPUT_16S/Pa-6-5-1_S124_R2.fastq.gz
cat Pa-6-10-1_S125_L001_I1_001.fastq.gz Pa-6-10-1_S125_L001_R1_001.fastq.gz > $OUTPUT_16S/Pa-6-10-1_S125_R1.fastq.gz
cat Pa-6-10-1_S125_L001_I2_001.fastq.gz Pa-6-10-1_S125_L001_R2_001.fastq.gz > $OUTPUT_16S/Pa-6-10-1_S125_R2.fastq.gz
  cat Pf-1-5-1_S126_L001_I1_001.fastq.gz Pf-1-5-1_S126_L001_R1_001.fastq.gz > $OUTPUT_16S/Pf-1-5-1_S126_R1.fastq.gz
  cat Pf-1-5-1_S126_L001_I2_001.fastq.gz Pf-1-5-1_S126_L001_R2_001.fastq.gz > $OUTPUT_16S/Pf-1-5-1_S126_R2.fastq.gz
cat Pf-1-10-1_S135_L001_I1_001.fastq.gz Pf-1-10-1_S135_L001_R1_001.fastq.gz > $OUTPUT_16S/Pf-1-10-1_S135_R1.fastq.gz
cat Pf-1-10-1_S135_L001_I2_001.fastq.gz Pf-1-10-1_S135_L001_R2_001.fastq.gz > $OUTPUT_16S/Pf-1-10-1_S135_R2.fastq.gz
  cat Pf-2-5-1_S136_L001_I1_001.fastq.gz Pf-2-5-1_S136_L001_R1_001.fastq.gz > $OUTPUT_16S/Pf-2-5-1_S136_R1.fastq.gz
  cat Pf-2-5-1_S136_L001_I2_001.fastq.gz Pf-2-5-1_S136_L001_R2_001.fastq.gz > $OUTPUT_16S/Pf-2-5-1_S136_R2.fastq.gz
cat Pf-2-10-1_S137_L001_I1_001.fastq.gz Pf-2-10-1_S137_L001_R1_001.fastq.gz > $OUTPUT_16S/Pf-2-10-1_S137_R1.fastq.gz
cat Pf-2-10-1_S137_L001_I2_001.fastq.gz Pf-2-10-1_S137_L001_R2_001.fastq.gz > $OUTPUT_16S/Pf-2-10-1_S137_R2.fastq.gz
  cat Pf-3-5-1_S138_L001_I1_001.fastq.gz Pf-3-5-1_S138_L001_R1_001.fastq.gz > $OUTPUT_16S/Pf-3-5-1_S138_R1.fastq.gz
  cat Pf-3-5-1_S138_L001_I2_001.fastq.gz Pf-3-5-1_S138_L001_R2_001.fastq.gz > $OUTPUT_16S/Pf-3-5-1_S138_R2.fastq.gz
cat Pf-3-10-1_S139_L001_I1_001.fastq.gz Pf-3-10-1_S139_L001_R1_001.fastq.gz > $OUTPUT_16S/Pf-3-10-1_S139_R1.fastq.gz
cat Pf-3-10-1_S139_L001_I2_001.fastq.gz Pf-3-10-1_S139_L001_R2_001.fastq.gz > $OUTPUT_16S/Pf-3-10-1_S139_R2.fastq.gz
  cat Pf-4-5-1_S140_L001_I1_001.fastq.gz Pf-4-5-1_S140_L001_R1_001.fastq.gz > $OUTPUT_16S/Pf-4-5-1_S140_R1.fastq.gz
  cat Pf-4-5-1_S140_L001_I2_001.fastq.gz Pf-4-5-1_S140_L001_R2_001.fastq.gz > $OUTPUT_16S/Pf-4-5-1_S140_R2.fastq.gz
cat Pf-4-10-1_S141_L001_I1_001.fastq.gz Pf-4-10-1_S141_L001_R1_001.fastq.gz > $OUTPUT_16S/Pf-4-10-1_S141_R1.fastq.gz
cat Pf-4-10-1_S141_L001_I2_001.fastq.gz Pf-4-10-1_S141_L001_R2_001.fastq.gz > $OUTPUT_16S/Pf-4-10-1_S141_R2.fastq.gz
  cat Pf-5-5-1_S142_L001_I1_001.fastq.gz Pf-5-5-1_S142_L001_R1_001.fastq.gz > $OUTPUT_16S/Pf-5-5-1_S142_R1.fastq.gz
  cat Pf-5-5-1_S142_L001_I2_001.fastq.gz Pf-5-5-1_S142_L001_R2_001.fastq.gz > $OUTPUT_16S/Pf-5-5-1_S142_R2.fastq.gz
cat Pf-5-10-1_S151_L001_I1_001.fastq.gz Pf-5-10-1_S151_L001_R1_001.fastq.gz > $OUTPUT_16S/Pf-5-10-1_S151_R1.fastq.gz
cat Pf-5-10-1_S151_L001_I2_001.fastq.gz Pf-5-10-1_S151_L001_R2_001.fastq.gz > $OUTPUT_16S/Pf-5-10-1_S151_R2.fastq.gz
  cat Pf-6-5-1_S152_L001_I1_001.fastq.gz Pf-6-5-1_S152_L001_R1_001.fastq.gz > $OUTPUT_16S/Pf-6-5-1_S152_R1.fastq.gz
  cat Pf-6-5-1_S152_L001_I2_001.fastq.gz Pf-6-5-1_S152_L001_R2_001.fastq.gz > $OUTPUT_16S/Pf-6-5-1_S152_R2.fastq.gz
cat Pf-6-10-1_S153_L001_I1_001.fastq.gz Pf-6-10-1_S153_L001_R1_001.fastq.gz > $OUTPUT_16S/Pf-6-10-1_S153_R1.fastq.gz
cat Pf-6-10-1_S153_L001_I2_001.fastq.gz Pf-6-10-1_S153_L001_R2_001.fastq.gz > $OUTPUT_16S/Pf-6-10-1_S153_R2.fastq.gz
    cat PYC-NEG_S154_L001_I1_001.fastq.gz PYC-NEG_S154_L001_R1_001.fastq.gz > $OUTPUT_16S/PYC-NEG_S154_R1.fastq.gz
    cat PYC-NEG_S154_L001_I2_001.fastq.gz PYC-NEG_S154_L001_R2_001.fastq.gz > $OUTPUT_16S/PYC-NEG_S154_R2.fastq.gz

cd $DATADIRECTORY_ITS


# Pour une raison encore incconue : 
# 
# Pa-1-10-1_S107_L001_R1_001_fastqc bon
# Pa-1-10-1_S107_L001_I2_001_fastqc pas bon
# Pa-1-10-1_S107_L001_I1_001_fastqc pas bon
# Pa-1-10-1_S107_L001_R2_001_fastqc bon 
# 
# Pa-1-5-1_S106_L001_I1_001_fastqc pas bon
# Pa-1-5-1_S106_L001_I2_001_fastqc pas bon
# Pa-1-5-1_S106_L001_R1_001_fastqc bon
# Pa-1-5-1_S106_L001_R2_001_fastqc bon
# 
# Pa-2-10-1_S109_L001_I1_001_fastqc pas bon
# Pa-2-10-1_S109_L001_I2_001_fastqc pas bon
# Pa-2-10-1_S109_L001_R1_001_fastqc bon
# Pa-2-10-1_S109_L001_R2_001_fastqc bon

#  cat Pa-1-5-1_S106_L001_I1_001.fastq.gz Pa-1-5-1_S106_L001_R1_001.fastq.gz > $OUTPUT_ITS/Pa-1-5-1_S106_R1.fastq.gz
#  cat Pa-1-5-1_S106_L001_R2_001.fastq.gz Pa-1-5-1_S106_L001_I2_001.fastq.gz > $OUTPUT_ITS/Pa-1-5-1_S106_R2.fastq.gz

  cat Pa-1-5-1_S106_L001_R1_001.fastq.gz > $OUTPUT_ITS/Pa-1-5-1_S106_R1.fastq.gz
  cat Pa-1-5-1_S106_L001_R2_001.fastq.gz > $OUTPUT_ITS/Pa-1-5-1_S106_R2.fastq.gz


# cat Pa-1-10-1_S107_L001_I1_001.fastq.gz Pa-1-10-1_S107_L001_R1_001.fastq.gz > $OUTPUT_ITS/Pa-1-10-1_S107_R1.fastq.gz
# cat Pa-1-10-1_S107_L001_R2_001.fastq.gz Pa-1-10-1_S107_L001_I2_001.fastq.gz > $OUTPUT_ITS/Pa-1-10-1_S107_R2.fastq.gz

cat Pa-1-10-1_S107_L001_R1_001.fastq.gz > $OUTPUT_ITS/Pa-1-10-1_S107_R1.fastq.gz
cat Pa-1-10-1_S107_L001_R2_001.fastq.gz > $OUTPUT_ITS/Pa-1-10-1_S107_R2.fastq.gz

  cat Pa-2-5-1_S108_L001_I1_001.fastq.gz Pa-2-5-1_S108_L001_R1_001.fastq.gz > $OUTPUT_ITS/Pa-2-5-1_S108_R1.fastq.gz
  cat Pa-2-5-1_S108_L001_I2_001.fastq.gz Pa-2-5-1_S108_L001_R2_001.fastq.gz > $OUTPUT_ITS/Pa-2-5-1_S108_R2.fastq.gz
  
# cat Pa-2-10-1_S109_L001_I1_001.fastq.gz Pa-2-10-1_S109_L001_R1_001.fastq.gz > $OUTPUT_ITS/Pa-2-10-1_S109_R1.fastq.gz
# cat Pa-2-10-1_S109_L001_R2_001.fastq.gz Pa-2-10-1_S109_L001_I2_001.fastq.gz > $OUTPUT_ITS/Pa-2-10-1_S109_R2.fastq.gz

cat Pa-2-10-1_S109_L001_R1_001.fastq.gz > $OUTPUT_ITS/Pa-2-10-1_S109_R1.fastq.gz
cat Pa-2-10-1_S109_L001_R2_001.fastq.gz > $OUTPUT_ITS/Pa-2-10-1_S109_R2.fastq.gz

  cat Pa-3-5-1_S110_L001_I1_001.fastq.gz Pa-3-5-1_S110_L001_R1_001.fastq.gz > $OUTPUT_ITS/Pa-3-5-1_S110_R1.fastq.gz
  cat Pa-3-5-1_S110_L001_I2_001.fastq.gz Pa-3-5-1_S110_L001_R2_001.fastq.gz > $OUTPUT_ITS/Pa-3-5-1_S110_R2.fastq.gz
cat Pa-3-10-1_S119_L001_I1_001.fastq.gz Pa-3-10-1_S119_L001_R1_001.fastq.gz > $OUTPUT_ITS/Pa-3-10-1_S119_R1.fastq.gz
cat Pa-3-10-1_S119_L001_I2_001.fastq.gz Pa-3-10-1_S119_L001_R2_001.fastq.gz > $OUTPUT_ITS/Pa-3-10-1_S119_R2.fastq.gz
  cat Pa-4-5-1_S120_L001_I1_001.fastq.gz Pa-4-5-1_S120_L001_R1_001.fastq.gz > $OUTPUT_ITS/Pa-4-5-1_S120_R1.fastq.gz
  cat Pa-4-5-1_S120_L001_I2_001.fastq.gz Pa-4-5-1_S120_L001_R2_001.fastq.gz > $OUTPUT_ITS/Pa-4-5-1_S120_R2.fastq.gz
cat Pa-4-10-1_S121_L001_I1_001.fastq.gz Pa-4-10-1_S121_L001_R1_001.fastq.gz > $OUTPUT_ITS/Pa-4-10-1_S121_R1.fastq.gz
cat Pa-4-10-1_S121_L001_I2_001.fastq.gz Pa-4-10-1_S121_L001_R2_001.fastq.gz > $OUTPUT_ITS/Pa-4-10-1_S121_R2.fastq.gz
  cat Pa-5-5-1_S122_L001_I1_001.fastq.gz Pa-5-5-1_S122_L001_R1_001.fastq.gz > $OUTPUT_ITS/Pa-5-5-1_S122_R1.fastq.gz
  cat Pa-5-5-1_S122_L001_I2_001.fastq.gz Pa-5-5-1_S122_L001_R2_001.fastq.gz > $OUTPUT_ITS/Pa-5-5-1_S122_R2.fastq.gz
cat Pa-5-10-1_S123_L001_I1_001.fastq.gz Pa-5-10-1_S123_L001_R1_001.fastq.gz > $OUTPUT_ITS/Pa-5-10-1_S123_R1.fastq.gz
cat Pa-5-10-1_S123_L001_I2_001.fastq.gz Pa-5-10-1_S123_L001_R2_001.fastq.gz > $OUTPUT_ITS/Pa-5-10-1_S123_R2.fastq.gz
  cat Pa-6-5-1_S124_L001_I1_001.fastq.gz Pa-6-5-1_S124_L001_R1_001.fastq.gz > $OUTPUT_ITS/Pa-6-5-1_S124_R1.fastq.gz
  cat Pa-6-5-1_S124_L001_I2_001.fastq.gz Pa-6-5-1_S124_L001_R2_001.fastq.gz > $OUTPUT_ITS/Pa-6-5-1_S124_R2.fastq.gz
cat Pa-6-10-1_S125_L001_I1_001.fastq.gz Pa-6-10-1_S125_L001_R1_001.fastq.gz > $OUTPUT_ITS/Pa-6-10-1_S125_R1.fastq.gz
cat Pa-6-10-1_S125_L001_I2_001.fastq.gz Pa-6-10-1_S125_L001_R2_001.fastq.gz > $OUTPUT_ITS/Pa-6-10-1_S125_R2.fastq.gz
  cat Pf-1-5-1_S126_L001_I1_001.fastq.gz Pf-1-5-1_S126_L001_R1_001.fastq.gz > $OUTPUT_ITS/Pf-1-5-1_S126_R1.fastq.gz
  cat Pf-1-5-1_S126_L001_I2_001.fastq.gz Pf-1-5-1_S126_L001_R2_001.fastq.gz > $OUTPUT_ITS/Pf-1-5-1_S126_R2.fastq.gz
cat Pf-1-10-1_S135_L001_I1_001.fastq.gz Pf-1-10-1_S135_L001_R1_001.fastq.gz > $OUTPUT_ITS/Pf-1-10-1_S135_R1.fastq.gz
cat Pf-1-10-1_S135_L001_I2_001.fastq.gz Pf-1-10-1_S135_L001_R2_001.fastq.gz > $OUTPUT_ITS/Pf-1-10-1_S135_R2.fastq.gz
  cat Pf-2-5-1_S136_L001_I1_001.fastq.gz Pf-2-5-1_S136_L001_R1_001.fastq.gz > $OUTPUT_ITS/Pf-2-5-1_S136_R1.fastq.gz
  cat Pf-2-5-1_S136_L001_I2_001.fastq.gz Pf-2-5-1_S136_L001_R2_001.fastq.gz > $OUTPUT_ITS/Pf-2-5-1_S136_R2.fastq.gz
cat Pf-2-10-1_S137_L001_I1_001.fastq.gz Pf-2-10-1_S137_L001_R1_001.fastq.gz > $OUTPUT_ITS/Pf-2-10-1_S137_R1.fastq.gz
cat Pf-2-10-1_S137_L001_I2_001.fastq.gz Pf-2-10-1_S137_L001_R2_001.fastq.gz > $OUTPUT_ITS/Pf-2-10-1_S137_R2.fastq.gz
  cat Pf-3-5-1_S138_L001_I1_001.fastq.gz Pf-3-5-1_S138_L001_R1_001.fastq.gz > $OUTPUT_ITS/Pf-3-5-1_S138_R1.fastq.gz
  cat Pf-3-5-1_S138_L001_I2_001.fastq.gz Pf-3-5-1_S138_L001_R2_001.fastq.gz > $OUTPUT_ITS/Pf-3-5-1_S138_R2.fastq.gz
cat Pf-3-10-1_S139_L001_I1_001.fastq.gz Pf-3-10-1_S139_L001_R1_001.fastq.gz > $OUTPUT_ITS/Pf-3-10-1_S139_R1.fastq.gz
cat Pf-3-10-1_S139_L001_I2_001.fastq.gz Pf-3-10-1_S139_L001_R2_001.fastq.gz > $OUTPUT_ITS/Pf-3-10-1_S139_R2.fastq.gz
  cat Pf-4-5-1_S140_L001_I1_001.fastq.gz Pf-4-5-1_S140_L001_R1_001.fastq.gz > $OUTPUT_ITS/Pf-4-5-1_S140_R1.fastq.gz
  cat Pf-4-5-1_S140_L001_I2_001.fastq.gz Pf-4-5-1_S140_L001_R2_001.fastq.gz > $OUTPUT_ITS/Pf-4-5-1_S140_R2.fastq.gz
cat Pf-4-10-1_S141_L001_I1_001.fastq.gz Pf-4-10-1_S141_L001_R1_001.fastq.gz > $OUTPUT_ITS/Pf-4-10-1_S141_R1.fastq.gz
cat Pf-4-10-1_S141_L001_I2_001.fastq.gz Pf-4-10-1_S141_L001_R2_001.fastq.gz > $OUTPUT_ITS/Pf-4-10-1_S141_R2.fastq.gz
  cat Pf-5-5-1_S142_L001_I1_001.fastq.gz Pf-5-5-1_S142_L001_R1_001.fastq.gz > $OUTPUT_ITS/Pf-5-5-1_S142_R1.fastq.gz
  cat Pf-5-5-1_S142_L001_I2_001.fastq.gz Pf-5-5-1_S142_L001_R2_001.fastq.gz > $OUTPUT_ITS/Pf-5-5-1_S142_R2.fastq.gz
cat Pf-5-10-1_S151_L001_I1_001.fastq.gz Pf-5-10-1_S151_L001_R1_001.fastq.gz > $OUTPUT_ITS/Pf-5-10-1_S151_R1.fastq.gz
cat Pf-5-10-1_S151_L001_I2_001.fastq.gz Pf-5-10-1_S151_L001_R2_001.fastq.gz > $OUTPUT_ITS/Pf-5-10-1_S151_R2.fastq.gz
  cat Pf-6-5-1_S152_L001_I1_001.fastq.gz Pf-6-5-1_S152_L001_R1_001.fastq.gz > $OUTPUT_ITS/Pf-6-5-1_S152_R1.fastq.gz
  cat Pf-6-5-1_S152_L001_I2_001.fastq.gz Pf-6-5-1_S152_L001_R2_001.fastq.gz > $OUTPUT_ITS/Pf-6-5-1_S152_R2.fastq.gz
cat Pf-6-10-1_S153_L001_I1_001.fastq.gz Pf-6-10-1_S153_L001_R1_001.fastq.gz > $OUTPUT_ITS/Pf-6-10-1_S153_R1.fastq.gz
cat Pf-6-10-1_S153_L001_I2_001.fastq.gz Pf-6-10-1_S153_L001_R2_001.fastq.gz > $OUTPUT_ITS/Pf-6-10-1_S153_R2.fastq.gz
    cat PYC-NEG_S154_L001_I1_001.fastq.gz PYC-NEG_S154_L001_R1_001.fastq.gz > $OUTPUT_ITS/PYC-NEG_S154_R1.fastq.gz
    cat PYC-NEG_S154_L001_I2_001.fastq.gz PYC-NEG_S154_L001_R2_001.fastq.gz > $OUTPUT_ITS/PYC-NEG_S154_R2.fastq.gz
