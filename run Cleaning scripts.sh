#!/bin/bash

echo "Starting batch script execution..."

# Array of scripts to execute
scripts=(
    "./01-move_html_files.sh"
    "./02-move_jpg_files.sh"
    "./03-move_css_files.sh"
    "./04-move_images_folders.sh"
    "./05-move_css_folders.sh"
    "./06-delete_movicol_folders.sh"
    "./07-bulk_replace_js_paths.sh"
    "./08-bulk_replace_images_paths.sh"
    "./09-bulk_replace_css_paths.sh"
    "./10-bulk_replace_htmlNavigator_paths.sh"
    "./11-bulk_replace_images_paths.sh"
)

# Number of retries allowed
MAX_RETRIES=3

for script in "${scripts[@]}"; do
    echo "Running $script..."
    
    retry_count=0
    success=0
    
    # Retry loop
    while [ $retry_count -lt $MAX_RETRIES ]; do
        $script && success=1 && break
        retry_count=$((retry_count + 1))
        echo "Retrying $script... (Attempt $retry_count of $MAX_RETRIES)"
    done

    # Check if the script succeeded after retries
    if [ $success -eq 0 ]; then
        echo "Failed to execute $script after $MAX_RETRIES attempts. Moving to the next script."
    else
        echo "Completed $script"
    fi

    # Prompt user to press any key to continue
    echo "Press any key to continue to the next script..."
    read -n 1 -s  # Wait for a single key press
done

echo "Batch script execution completed!"
