#!/bin/bash

# Directory to process (css/)
CSS_DIR="css"

# Check if the css/ directory exists
if [ ! -d "$CSS_DIR" ]; then
    echo "Directory '$CSS_DIR' does not exist!"
    exit 1
fi

echo "Processing subfolders in '$CSS_DIR'..."

# Loop through each subfolder in css/
for subfolder in "$CSS_DIR"/*/; do
    # Skip if no subfolders exist
    [ -d "$subfolder" ] || continue

    # Get the name of the subfolder
    SUBFOLDER_NAME=$(basename "$subfolder")

    # Capture the first two characters of the subfolder name
    PREFIX=${SUBFOLDER_NAME:0:2}

    echo "Subfolder: $SUBFOLDER_NAME, Prefix: $PREFIX"
		# Find all .html files
	find "$subfolder" -type f -name "*.css" | while read -r file; do
		# Extract the first two characters of the folder name
		# Construct the NEW_PATH dynamically
		
		OLD_PATH="../images"
		NEW_PATH="../../images/${PREFIX}images"
		
		echo "Processing file: $file"
		echo "Replacing '$OLD_PATH' with '$NEW_PATH'"

		# Replace the old path with the new path in the current file
		sed -i.bak "s|$OLD_PATH|$NEW_PATH|g" "$file"
	done
done

echo "Processing complete!"
sleep 10
