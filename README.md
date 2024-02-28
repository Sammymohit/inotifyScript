# File Sync Script

## Overview
This script monitors a file for changes using inotify and synchronizes the changes to a remote server using rsync.

## Installation
Ensure that inotify-tools and rsync are installed on your system.

```bash
sudo apt-get install inotify-tools rsync
