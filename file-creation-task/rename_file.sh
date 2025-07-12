for i in {1..20}; do
  if [ -f "file_$i.txt" ]; then
    mv "file_$i.txt" "renamed_file_$i.yml"
    echo "Renamed file_$i.txt to renamed_file_$i.yml"
  else
    echo "file_$i.txt does not exist. Skipping..."
  fi
done

echo -e "\nTop 5 latest modified files:"
ls -lt | head -n 5
