#!/bin/bash
#2018/12/19

DEDUPE='/Volumes/data/bin/bbmap/dedupe.sh'
READS='/Volumes/data/dgolteanu/MGYS00001695/trimmed_reads/adapter+crop/paired_end'
OUT='/Volumes/data/dgolteanu/MGYS00001695/trimmed_reads/adapter+crop/paired_end/dereplicated'

for f in $READS/*.fastq.gz
do
  I=`basename $f`
  O=`basename -s .gz $f`
  INPUT=`echo $I`
  OUTPUT=`echo $O`
  nohup $DEDUPE -Xmx100g in=$READS/$INPUT out=$OUT/$OUTPUT sq=t &
done
