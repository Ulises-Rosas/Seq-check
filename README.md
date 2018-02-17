# Seq-check
Bash script for fast assessment of sequences embedded on reads (i.e. fastq files). A tab-separated table with percentages of presence is obtained

## Usage
This script uses fastq file as input. 

```
$ head file1.fastq
@read##
CCGCGGCTGCTGGCACAGAGTTAGCCGGTGCTTATTCCGCCGGTACCGTCAAGGCACACA
+
IIIIIIIIIIIIIIIIIIIIGGGIIIIIIIIIIIIIIC?????IIIIIIIIIEDE@<<<8
@read##
CCGCGGCTGCTGGGGCACGTAGTTAGCCGG
+
DDFIIIIHGFECCGF663338>@@=;6666
@read##
CCGCGGCTGCTGGCACGTAGTTAGCCGCAGTCTTCTTCT
```
The of comands are as the following:

```
$ bash fast_screening.sh
Usage: fast_screening.sh [-s <sequence>] <fastq file(s)>
```
## Output

Hence, if we have the following file in our working directory:
```
$ ls
fast_screening.sh  file1.fastq  file2.fastq  file3.fastq  file4.fastq 
```
and upon running the fast_screening.sh script, we should obtain results like this:
```
$ bash fast_screening.sh -s "^CCGCGGCTGCTGGG" *.fastq
file4.fastq:	88	30	34.090
file3.fastq:	43	9	20.930
file2.fastq:	130	26	20.000
file1.fastq:	65	13	20.000
```


