#!/bin/bash

# Create the "css" directory in the current directory if it doesn't exist
TARGET_DIR="./css"
mkdir -p "$TARGET_DIR"

# Loop through each folder in the current directory
for folder in */; do
    # Skip if no folders exist or if it's the "css" target directory
    [ -d "$folder" ] || continue
    [ "$folder" == "css/" ] && continue

    # Extract the first two characters of the folder name
    PREFIX=${folder:0:2}

    echo "Processing folder: $folder (PREFIX: $PREFIX)"

    # Check if a subfolder named "css" exists inside the folder
    if [ -d "${folder}css" ]; then
        echo "Found 'css' subfolder in $folder"

        # Construct the new subfolder name
        NEW_NAME="${PREFIX}css"

        echo "Renaming 'css' to '$NEW_NAME' and moving to $TARGET_DIR"

        # Rename and move the "css" subfolder
        mv "${folder}css" "$TARGET_DIR/$NEW_NAME"
    else
        echo "No 'css' subfolder found in $folder"
    fi
done

echo "All 'css' subfolders renamed and moved to $TARGET_DIR!"