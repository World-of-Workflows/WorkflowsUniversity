# Installation
This document contains instructions on how to install and configure HubOne Workflows on your machine.

## Windows Installation

1. Download the latest version of dotnet 7 from [here](https://download.visualstudio.microsoft.com/download/pr/8de163f5-5d91-4dc3-9d01-e0b031a03dd9/0170b328d569a49f6f6a080064309161/dotnet-hosting-7.0.0-win.exe
)
1. Download the latest version of HubOne Workflows from [here](https://dev.azure.com/tribetechau/HubOne%20Workflows/_build?definitionId=11)
2. Extract the zip file to a folder of your choice
3. Execute RunWorkflows.cmd
4. Navigate to https://localhost:7063

## Mac (Arm M1 Chip) Installation
1. Download the lastest version of dotnet 7 from [here](https://dotnet.microsoft.com/en-us/download/dotnet/thank-you/sdk-7.0.100-macos-arm64-binaries)
2. Download the latest version of HubOne Workflows from [here](https://dev.azure.com/tribetechau/HubOne%20Workflows/_build?definitionId=11)
3. Extract the Mac-arm64 zip file to a folder of your choice
4. Execute the following from the terminal

```bash
mkdir App_Data
dotnet dev-certs https
dotnet HubOneWorflowsApp.Server.dll --urls "https://*:7063"
```

Finally, using Chrome, Navigate to https://localhost:7063

