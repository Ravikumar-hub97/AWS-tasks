#!/bin/bash

input_file="input.txt"

tail -n +5 "$input_file" | awk '/welcome/ {gsub(/give/, "learning")} {print}' > temp_body.txt
head -n 4 "$input_file" > temp_head.txt
cat temp_head.txt temp_body.txt > "$input_file"
rm temp_head.txt temp_body.txt
