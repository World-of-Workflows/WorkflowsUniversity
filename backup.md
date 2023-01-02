# Backup

*This section deails with implementations using SQLite only. Implementations using SQL Server are expected to perform their own backups.*

World of Workflows can be configured to take a backup of the full database including all workflows, activities, variables, etc. This is done using the Backup feature. The backup feature is configured in the appsettings.json file as follows:

```json
{
    "Backup": true,
	"BackupToAzureStorage": false,
	"BackupStorageConnectionString": ""
}
```

Setting ```Backup``` to ```true``` will configure the system to save a backup file everytime the server is stopped. This creates a date stamped file in the data folder.

Setting ```BackupToAzureStorage``` to ```true``` will configure the system to save a backup file to Azure Storage everytime the server is stopped. This creates a date stamped file in the Azure Storage account.

Configure the Azure Storage Account using the ```BackupStorageConnectionString``` setting.

To recover a backup, obtain the file you want and overwrite the file \App_data\worldofworkflows.db with the backup file.