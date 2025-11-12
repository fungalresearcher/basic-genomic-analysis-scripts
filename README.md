# basic-genomic-analysis-scripts
A repository to store scripts that are used for very basic genomic data analysis, such as running fastp in a loop over multiple files or applying fastqc to multiple directories. 

run_fastp.sh
Used for looping fastp across multiple files within a directory. Requires setting up a "raw_reads" directory within the local directory containing the files to be operated on. Requires setting up a "fastp_filtered_reads" directory in the same directory. Designed to operate on files that start with "SRR...". 
