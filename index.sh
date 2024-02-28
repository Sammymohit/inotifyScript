#!/bin/bash

# Define the paths and remote server details
SOURCE_FILE="/path/to/source/file"
DESTINATION_SERVER="user@remote_server:/path/to/destination/"

# Monitor the source file for changes
inotifywait -m -e modify "$SOURCE_FILE" | while read -r directory events filename; do
    # Use rsync to synchronize changes to the remote server
    rsync -avz --progress "$SOURCE_FILE" "$DESTINATION_SERVER"
done
