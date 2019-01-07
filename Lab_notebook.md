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
### 2018/12/07
Performed read adapter removal, trimming and dereplication with Trimmomatic v0.36 using the following script: ```/Volumes/data/dgolteanu/MGYS00001695/trimomatic.sh```

Attempted trimming with ```ILLUMINACLIP:0:30:11```, ```ILLUMINACLIP:0:30:7``` and ```ILLUMINACLIP:0:30:15``` i.e three different simple alignment thresholds and found all three kept the same amount of paired end reads + or - 0.1%. Therefore ```ILLUMINACLIP:0:30:11``` was used for all samples. Samples were additionally trimmed to 100 bp using the ```CROP:100``` option.

Reperformed quality control on trimmed sequences using the following command:
```bash
nohup /Volumes/data/bin/FastQC/fastqc ./*P.fastq.gz &
```
### 2018/12/19
Performed deduplication with BBmap v35.34 dedup.sh using the deduplication.sh script on the adapter+crop trimmed reads
### 2019/01/03
Performed re-pairing of deduplicated paired reads for downstream assembly using ```/Volumes/data/dgolteanu/MGYS00001695/trimmed_reads/adapter+crop/paired_end/dereplicated/re_paired/filter_merge.sh``` which uses the modified ```merge_filtered_fastq.pl``` found in the project home directory.
### 2019/01/04
Performed deduplication with BBmap v35.34 dedup.sh using the deduplication.sh script on the adapter_only trimmed reads

Performed re-pairing of deduplicated paired reads for downstream assembly using ```/Volumes/data/dgolteanu/MGYS00001695/trimmed_reads/adapter_only/paired_end/dereplicated/re_paired/filter_merge.sh``` which uses the modified ```merge_filtered_fastq.pl``` found in the project home directory.
### 2019/01/05
Performed metagenomic assembly of both adapter_only and adapter+crop pre processed reads using ``` nohup /Volumes/data/bin/megahit/megahit -1 ERR970398_1P.fastq,ERR970399_1P.fastq,ERR970400_1P.fastq,ERR970401_1P.fastq,ERR970402_1P.fastq,ERR970403_1P.fastq,ERR970404_1P.fastq,ERR970405_1P.fastq,ERR970406_1P.fastq,ERR970407_1P.fastq -2 ERR970398_2P.fastq,ERR970399_2P.fastq,ERR970400_2P.fastq,ERR970401_2P.fastq,ERR970402_2P.fastq,ERR970403_2P.fastq,ERR970404_2P.fastq,ERR970405_2P.fastq,ERR970406_2P.fastq,ERR970407_2P.fastq -o /Volumes/data/dgolteanu/MGYS00001695/assemblies/adapter_only_megahit & ```  ``` nohup /Volumes/data/bin/megahit/megahit -1 ERR970398_1P.fastq,ERR970399_1P.fastq,ERR970400_1P.fastq,ERR970401_1P.fastq,ERR970402_1P.fastq,ERR970403_1P.fastq,ERR970404_1P.fastq,ERR970405_1P.fastq,ERR970406_1P.fastq,ERR970407_1P.fastq -2 ERR970398_2P.fastq,ERR970399_2P.fastq,ERR970400_2P.fastq,ERR970401_2P.fastq,ERR970402_2P.fastq,ERR970403_2P.fastq,ERR970404_2P.fastq,ERR970405_2P.fastq,ERR970406_2P.fastq,ERR970407_2P.fastq -o /Volumes/data/dgolteanu/MGYS00001695/assemblies/adapter+crop_megahit & ```  Scripts were run in ``` /Volumes/data/dgolteanu/MGYS00001695/trimmed_reads/adapter_only/paired_end/dereplicated/re_paired ``` and ```/Volumes/data/dgolteanu/MGYS00001695/trimmed_reads/adapter+crop/paired_end/dereplicated/re_paired ``` respectively

### 2019/01/06
Performed dereplication of unpaired reads for both adapter_only and adapter+crop using the deduplicaiton.sh script
Performed quality control of both adapter_only and adapter+crop reads using ```nohup /Volumes/data/bin/FastQC/fastqc ./*U.fastq &```

Assembly was performed using Metaspades : ``` nohup /Volumes/data/bin/SPAdes-3.11.1-Linux/bin/metaspades.py --pe1-1 "/Volumes/data/dgolteanu/MGYS00001695/trimmed_reads/adapter+crop/paired_end/dereplicated/re_paired/*1P.fastq " --pe1-2 "/Volumes/data/dgolteanu/MGYS00001695/trimmed_reads/adapter+crop/paired_end/dereplicated/reverse/re_paired/ERR970* " --pe1-s "/Volumes/data/dgolteanu/MGYS00001695/trimmed_reads/adapter+crop/unpaired/dereplicated/*U.fastq " -o /Volumes/data/dgolteanu/MGYS00001695/assemblies/adapter+crop_metaSPAdes & ``` For some reason wildcard did not work for reverse reads 

  ERR970398_1U.fastq.gz,ERR970399_1U.fastq.gz,ERR970400_1U.fastq.gz,ERR970401_1U.fastq.gz,ERR970402_1U.fastq.gz,ERR970403_1U.fastq.gz,ERR970404_1U.fastq.gz,ERR970405_1U.fastq.gz,ERR970406_1U.fastq.gz,ERR970407_1U.fastq.gz  ```

  ERR970398_2P.fastq ERR970399_2P.fastq ERR970400_2P.fastq ERR970401_2P.fastq ERR970402_2P.fastq ERR970403_2P.fastq ERR970404_2P.fastq ERR970405_2P.fastq ERR970406_2P.fastq ERR970407_2P.fastq
