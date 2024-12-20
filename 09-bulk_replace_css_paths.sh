#!/bin/bash

# Directory containing the HTML files
SEARCH_DIR=${1:-.}  # Default to current directory if no argument is passed

# Paths to search and replace


echo "Searching for '$OLD_PATH' and dynamically replacing it in all HTML files in $SEARCH_DIR..."

# Find all .html files
find "$SEARCH_DIR" -type f -name "*.html" | while read -r file; do
    # Extract the first 2 characters of the file name (before '.html')
    BASENAME=$(basename "$file" .html)  # Get the file name without extension
    PREFIX=${BASENAME:0:2}              # Get the first 2 characters

    # Construct the NEW_PATH dynamically
	OLD_PATH="css/"
    NEW_PATH="css/${PREFIX}css/"
	
    echo "Processing file: $file"
    echo "Replacing '$OLD_PATH' with '$NEW_PATH'"

    # Replace the old path with the new path in the current file
    sed -i "s|$OLD_PATH|$NEW_PATH|g" "$file"
done

echo "All replacements completed!"