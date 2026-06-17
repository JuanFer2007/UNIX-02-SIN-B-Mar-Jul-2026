#!/bin/bash
awk '{print $1,$2,$3}' log.txt
awk '{print $1}' log.txt
awk '{print $2}' log.txt
awk '{print $3}' log.txt
awk '{print $1,$NF}' log.txt
awk '{print $NF}' log.txt
awk -F',' '{print $1}' example_csv.txt
awk 'NR < 10' log.txt
head log.t
grep "42.236.10.117" log.txt | awk '{print $7}'
sed 's/Mozilla/Godzilla/g' log.txt
sed 's/Mozilla/Godzilla/g' log.txt > newlog.txt
grep -o "Mozilla" log.txt       # Searches 'log.txt' and prints only the exact matches of "Mozilla" on new lines, ignoring the rest of the text.
grep -o "Godzilla" newlog.txt   # Searches 'newlog.txt' and displays only the word "Godzilla" each time it is found, isolating it from the context.
