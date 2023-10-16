acc=$(awk '{print $1}' $1 | grep -v "#" | tr "\n" ",")
acc=${acc%?}
echo $acc
datasets download genome accession $acc --include genome,gff3
