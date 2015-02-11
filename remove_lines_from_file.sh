# I used this to take a directory of .csv files with 3 description header lines
# and one real header line (4 in total) that needed to be removed so they would
# import into a MongoDB collection correctly.

# I need to review the Linux Command Line book to get a better understanding of
# 'xargs'. I thought I understood it, but clearly I don't. Anyway, this works
# for now.

find . -maxdepth 1  -name "*.csv" | xargs -n 1 tail -n +5 > cleaned_test/output_tail_2.csv

# TODO: Figure out how to only process the most recent file
# TODO: Figure out how to mongoimport from a shell script.
