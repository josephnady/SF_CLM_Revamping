#!/bin/bash

# Create the "images" directory in the current directory if it doesn't exist
TARGET_DIR="./images"
mkdir -p "$TARGET_DIR"

# Loop through each folder in the current directory
for folder in */; do
    # Skip if no folders exist or if it's the "images" target directory
    [ -d "$folder" ] || continue
    [ "$folder" == "images/" ] && continue

    # Extract the first two characters of the folder name
    PREFIX=${folder:0:2}

    echo "Processing folder: $folder (PREFIX: $PREFIX)"

    # Check if a subfolder named "images" exists inside the folder
    if [ -d "${folder}images" ]; then
        echo "Found 'images' subfolder in $folder"

        # Construct the new subfolder name
        NEW_NAME="${PREFIX}images"

        echo "Renaming 'images' to '$NEW_NAME' and moving to $TARGET_DIR"

        # Rename and move the "images" subfolder
        mv "${folder}images" "$TARGET_DIR/$NEW_NAME"
    else
        echo "No 'images' subfolder found in $folder"
    fi
done

echo "All 'images' subfolders renamed and moved to $TARGET_DIR!"