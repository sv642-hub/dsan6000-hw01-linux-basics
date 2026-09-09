echo "filename,size,num_lines" > wikimedia_data_summary.csv

for file in data/*.csv
do
	name=$(basename "$file")
	size=$(du -h "$file" | cut -f1)
	lines=$(wc -l < "$file")
	echo "$name,$size,$lines" >> wikimedia_data_summary.csv
done

