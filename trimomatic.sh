#!/bin/bash

# 2018/12/06
# Daniel Olteanu
# Adapted from Daniel Giguere
# Run script in the (working) data directory
#trim reads with trimmomatic
#set up a directory called trim_output before running.
#put this file in working directry and run: ./trimmomatic.sh
# make output directory before trimming
#mkdir /Volumes/data/dgolteanu/MGYS00001695/trimmed_reads

TRIM='/Volumes/data/bin/Trimmomatic-0.36/trimmomatic-0.36.jar'
READS='/Volumes/data/dgolteanu/MGYS00001695/raw_reads'
OUT='/Volumes/data/dgolteanu/MGYS00001695/trimmed_reads'
#run trimmomatic on all files in this directory
for f in $READS/*_1.fastq.gz
do
#get filename
I=`basename $f`
O=`basename -s _1.fastq.gz $f`
INPUT=`echo $I`
OUTPUT=`echo "$O.fastq.gz"`
#trimomatic
java -jar $TRIM PE -threads 8 -basein $READS/$INPUT -baseout $OUT/$OUTPUT ILLUMINACLIP:/Volumes/data/bin/Trimmomatic-0.36/adapters/NexteraPE-PE.fa:0:30:11 CROP:100

done
