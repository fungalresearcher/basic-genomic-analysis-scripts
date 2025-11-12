#!/bin/bash

#for each file that begins with SRR in the raw_reads sub-directory from the current directory, run fastp. Output to a separate sub-directory called "fastp_filtered_reads". 

output_dir="fastp_filtered_reads" #output directory is in the current directory and called "fastp_filtered_reads". 

mkdir -p "$output_dir" #makes the output directory if it is not already made. 
input_dir="./raw_reads" #input directory is a directory in the current directory called "raw_reads"
 

for reads in $(ls raw_reads/SRR*); do fastp -i $reads -o $output_dir/$(basename -s _.fastq.gz $reads)_filtered.fastq; done;

#english: for reads in the sub-directory raw_reads that begin with SRR, run fastp with the input being those reads, and the output to a directory called fastp_filtered_reads. 
#use basename to pull just the basename from each read, and the extension -s to remove _.fastq.gz from each read, but add back _filtered.fastq


