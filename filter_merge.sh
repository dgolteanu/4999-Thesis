#!/bin/bash
#2018/12/19

FILTER='/Volumes/data/dgolteanu/MGYS00001695/merge_filtered_fastq.pl'
F='/Volumes/data/dgolteanu/MGYS00001695/trimmed_reads/adapter+crop/paired_end/dereplicated/forward'
R='/Volumes/data/dgolteanu/MGYS00001695/trimmed_reads/adapter+crop/paired_end/dereplicated/reverse'

for f in $F
do
BASE=`basename -s 1P.fastq $f`
FOR=$BASE"1P.fastq"
REV=$BASE"2P.fastq"
echo $FOR
echo $REV
done
