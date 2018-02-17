# Seq-check

Find specific sequences between reads from a fastq file can help us to detect possible sources of contamination after sequence retrieving (e.g. fastq files). Obtaing the presence of abundant short squences on early analyses accelerates dessisions towards another procedures. A simple bash script is presented in order to quickly earn insights about possible over-represented sequences

## Usage
This script uses fastq file as input. There are four fastq files in this repository (i.e. [file1.fastq](https://github.com/Ulises-Rosas/Seq-check/blob/master/file1.fastq), [file2.fastq](https://github.com/Ulises-Rosas/Seq-check/blob/master/file2.fastq), [file3.fastq](https://github.com/Ulises-Rosas/Seq-check/blob/master/file3.fastq), [file4.fastq](https://github.com/Ulises-Rosas/Seq-check/blob/master/file4.fastq)) which will be used for conducting a test of the script. 

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


