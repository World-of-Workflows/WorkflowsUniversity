---
title: Watch Directory
layout: default
nav_order: 7
parent: File
grand_parent: Workflow Activities
---

# Watch Directory

**Description:** Triggers when files are created/modified in the given folder

**Category:** File

**Properties:**
- **Path**: The path of the directory to watch
- **Pattern**: The file pattern for interested files
- **ChangeTypes**: The types of file system events to subscribe to
- **NotifyFilters**: No hint available

**Input Properties:**
- **Path**: The path of the directory to watch
- **Pattern**: The file pattern for interested files
- **ChangeTypes**: The types of file system events to subscribe to
    - [ ] Created
    - [ ] Deleted
    - [ ] Changed
    - [ ] Renamed
    - [ ] All
- **NotifyFilters**: No hint available

**Output Properties:**
- **Output**: The created or modified file.
