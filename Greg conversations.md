# Greg notes

## 2018/09/21
Focus both on binning and differential expression,

If you only get one bin use ALDEx to look inside that bin & see if there are dirffernt strains

Raw reads from each sample get assebled into contigs. If contigs from different samples are the same, we'll merge them (fasta files).

Map the raw reads to the contigs to make BAM files

Using both BAM & fasta files you can bin them to get Mags

![](/Chalkboard1.jpg)

## 2018/11/07
Based on QC
1. Remove adapters (use trimomatic)
2. Trim
3. Dereplicate
