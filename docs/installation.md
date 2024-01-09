# Installation
This document contains instructions on how to install and configure World of Workflows on your machine.

## Windows Installation

1. Download the latest version of [.NET 8](https://dotnet.microsoft.com/en-us/download/dotnet/8.0).
2. Download the latest version of [World of Workflows](https://dev.azure.com/tribetechau/HubOne%20Workflows/_build?definitionId=11).
3. Extract the ZIP file to a folder of your choice.
4. Execute "RunWorkflows.cmd".
5. Navigate to [https://localhost:7063](https://localhost:7063).

## Mac (Arm M1 Chip) Installation
1. Download the latest version of [.NET 8](https://dotnet.microsoft.com/en-us/download/dotnet/8.0).
2. Download the latest version of [World of Workflows](https://dev.azure.com/tribetechau/HubOne%20Workflows/_build?definitionId=11).
3. Extract the "Mac-arm64" ZIP file to a folder of your choice.
4. Execute the following from the terminal:

```bash
mkdir App_Data
dotnet dev-certs https
dotnet HubOneWorflowsApp.Server.dll --urls "https://*:7063"
```

5. Open Chrome and navigate to [https://localhost:7063](https://localhost:7063).