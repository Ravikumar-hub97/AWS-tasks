#!/bin/bash

# Step 1: Create a directory and navigate into it
mkdir -p my_folder
cd my_folder || exit

# Step 2: Create "my_file.txt" and add some text
echo "This is my_file.txt" > my_file.txt
cat my_file.txt

# Step 3: Create "another_file.txt" and add some text
echo "This is another_file.txt" > another_file.txt
cat another_file.txt

# Step 4: Append content of "another_file.txt" to "my_file.txt"
cat another_file.txt >> my_file.txt

# Step 5: Display updated content of "my_file.txt"
echo -e "\nContents of my_file.txt after concatenation:"
cat my_file.txt

# Step 6: List all files and directories
echo -e "\nAll files and directories:"
ls -l
