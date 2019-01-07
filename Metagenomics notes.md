# Metagenomics
## Assemblers
Fastq to Fasta
```bash
zcat input_file.fastq.gz | awk 'NR%4==1{printf ">%s\n", substr($0,2)}NR%4==2{print}' > output_file.fa
```
