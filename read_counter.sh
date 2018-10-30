#!/bin/bash
echo "Input filename(s)"
read -p 'Filename: ' input
wordcount= wc -l $input
(expr $wordcount / 4 )> readcount.txt
