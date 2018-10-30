# Daniel Olteanu Lab notebook
### 2018/10/30
Performed metagenomic assembly

ENA accession: ERP010088 Sample:

ERR970398 paired ends (SCON01)

Assembly was done using the following assembler: MEGAHIT v1.1.2 running CentOS: 3.10.0-862.6.3.el7.x86_64 using the following comand:

nohup /Volumes/data/bin/megahit/megahit -t 40 -1 ERR970398_1.fastq.gz -2 ERR970398_2.fastq.gz -o ERR970398_1.megahit &
