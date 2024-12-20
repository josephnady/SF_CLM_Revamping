#!/bin/bash

# Directory containing the HTML files
SEARCH_DIR=${1:-.}  # Default to current directory if no argument is passed

# Regex pattern to match paths like "../{INDEX1}_Movicol/{INDEX2}_index.html"
PATTERN="\.\./([a-zA-Z0-9]+)_Movicol/[a-zA-Z0-9]+_index\.html"

echo "Searching and replacing paths in all HTML files in $SEARCH_DIR..."

# Find all .html files in the directory
find "$SEARCH_DIR" -type f -name "*.html" | while read -r file; do
    echo "Processing file: $file"

    # Use sed to search and replace the pattern
    sed -E -i "s|$PATTERN|\1_index.html|g" "$file"
done

echo "Replacement completed!"