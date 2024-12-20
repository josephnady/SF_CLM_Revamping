#!/bin/bash

# Create the "js" directory in the current directory if it doesn't exist
TARGET_DIR="./js"
mkdir -p "$TARGET_DIR"

# Loop through each folder in the current directory
for folder in */; do
    # Skip if no folders exist or if it's the "js" target directory
    [ -d "$folder" ] || continue
    [ "$folder" == "js/" ] && continue

    # Extract the first two characters of the folder name
    PREFIX=${folder:0:2}

    echo "Processing folder: $folder (PREFIX: $PREFIX)"

    # Check if a subfolder named "js" exists inside the folder
    if [ -d "${folder}js" ]; then
        echo "Found 'js' subfolder in $folder"

        # Construct the new subfolder name
        NEW_NAME="${PREFIX}js"

        echo "Renaming 'js' to '$NEW_NAME' and moving to $TARGET_DIR"

        # Rename and move the "js" subfolder
        mv "${folder}js" "$TARGET_DIR/$NEW_NAME"
    else
        echo "No 'js' subfolder found in $folder"
    fi
done

echo "All 'js' subfolders renamed and moved to $TARGET_DIR!"