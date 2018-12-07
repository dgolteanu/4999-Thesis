# Daniel Olteanu Lab notebook
```nohup``` at the beginning and ```&``` at the end of all commands are for running in the background & not part of the working code.
### 2018/10/30
Performed metagenomic assembly

ENA accession: ERP010088

Sample: ERR970398 paired ends (SCON01)

Assembly was done using the following assembler: MEGAHIT v1.1.2 running CentOS: 3.10.0-862.6.3.el7.x86_64 using the following comand:
```bash
nohup /Volumes/data/bin/megahit/megahit -t 40 -1 ERR970398_1.fastq.gz -2 ERR970398_2.fastq.gz -o test_ERR970398_1.megahit &
```
### 2018/11/06
Performed quality control of raw sequencing reads with FastQC v0.11.3 using the following command:
```bash
nohup /Volumes/data/bin/FastQC/fastqc -o ./assemblies/ ERR970401_1.fastq.gz ERR970404_2.fastq.gz ERR970398_1.fastq.gz ERR970401_2.fastq.gz ERR970405_1.fastq.gz ERR970398_2.fastq.gz ERR970402_1.fastq.gz ERR970405_2.fastq.gz ERR970399_1.fastq.gz ERR970402_2.fastq.gz ERR970406_1.fastq.gz ERR970399_2.fastq.gz ERR970403_1.fastq.gz ERR970406_2.fastq.gz ERR970400_1.fastq.gz ERR970403_2.fastq.gz ERR970407_1.fastq.gz ERR970400_2.fastq.gz ERR970404_1.fastq.gz ERR970407_2.fastq.gz &
```
### 2018/12/06
Performed read adapter removal, trimming and dereplication with Trimmomatic v0.36 using the following script

attempted with ```ILLUMINACLIP:0:40:11``` with 0% of reads surviving from sample ERR970398
