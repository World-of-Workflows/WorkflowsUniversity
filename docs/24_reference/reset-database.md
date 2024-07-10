---
title: Reset Database
layout: default
parent:  Reference
nav_order: 1
---

# Reset the Database

If you need to reset the database, re-installing the software commonly won't assist.

The database can be stored in different locations depending on how your copy of World of Workflows is configured.

## Common Locations

Common Locations are below:

- **World of Workflows PE**
  - Windows: ```c:\programdata\WorldOFWorkflows\worldofworkflows.db```
  - Linux ```/usr/share/worldofworkflows/worldofworkflows.db```
- **World of Workflows BE**
  - Linux: ```/data/worldofworkflows.db```

To reset your database, ensure World of Workflows is not running and simply delete the database file.

*To stop World of Workflows PE, Run services.msc, find World of Workflows and click stop.*

> **Note:** If you wish to keep your database, simply rename the file and rename it back later

Sometimes you will see ```worldofworkflows.db-shm``` or other files. These should be deleted too.

## Database Location Configuration
The database location is stored in ```appsettings.json``` in your code location.

```json
"Connectionstrings": {
		"H1WFSQlite": "Data Source=C:/ProgramData/WorldOfWorkflows/worldofworkflows.db"
	},
```

The ```H1WFSQLite``` setting contains the connection string for the database.

