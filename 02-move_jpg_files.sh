#!/bin/bash

# Loop through each folder in the current directory
for folder in */; do
    # Skip if no folders exist
    [ -d "$folder" ] || continue

    # Extract the first two characters of the folder name
    PREFIX=${folder:0:2}

    echo "Processing folder: $folder (PREFIX: $PREFIX)"

    # Search for .jpg files in the folder
    for file in "$folder"*.jpg; do
        # Check if any .jpg file exists
        if [ -f "$file" ]; then
            # Extract the base file name
            BASENAME=$(basename "$file")
            
            # Construct the new file name
            NEW_NAME="${PREFIX}-thumbnail.jpg"

            echo "Renaming $BASENAME to $NEW_NAME"

            # Rename the file
            mv "$file" "$NEW_NAME"

            # Move the renamed file back to the current directory
            mv "$NEW_NAME" .
        fi
    done
done

echo "All jpg files processed and moved!"