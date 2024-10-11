# Task a
grep -l "sample" file* | xargs grep -o "CSC510" | sort | uniq -c | awk '$1 >= 3 {print $2}' > filtered_files.txt

# Task b
xargs -I {} ls -l {} filtered_files.txt | gawk '{print $9, $5}' | sort -k2,2nr -k1,1 > sorted_files.txt

# Task c
cat sorted_files.txt | sed 's/file_/filtered_/' | awk '{print $1}'