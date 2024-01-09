# Release Process

This document details the release process for World of Workflows PE and BE.

1. Pipeline
2. PE Installer
3. BE Zip Files
4. Upload and Release to Github
5. Fix WIX PE Download

## 1. Pipeline
Devops Automatically constructs World of Workflows. You will need to download the files using the following procedure.

1. Navigate to the [Pipelines](https://dev.azure.com/tribetechau/WorldOfWorkflows/_build?definitionId=11)
2. Click the Latest Build
3. Click 2 Published
4. Download **Business Edition** and **Personal Edition** by clicking the 3 vertical dots and choosing to **Download artifacts**.
5. Clone [Installer Repo](https://dev.azure.com/tribetechau/WorldOfWorkflows/_git/Installers)
6. Right Click Both downloaded files, choose properties, Click **Unblock** and click **Ok**.
7. Extract the files from the pipeline to the **Package Folder** in the Installer Repo. The quickest way is to right click the zip file, choose Extract All and choose the **Package Folder**.
   > **Note:** If doing this the second time, ensure the folders above are empty. 
   > **Note:** If you are intending to make changes to the Installer repo, please delete the contents of the Packages folder before merging.

## 2. PE Installer
The following procedure creates a Windows Installer for World of Workflows PE.

1. Open [Advanced Installer](https://www.advancedinstaller.com).
2. Open ```World of Workflows.aip``` from the Installer folder in the repo from step 1.
3. Click **Product Details**
4. Upgrade the Version Number
5. Click **Save**
6. Click **Keep Existing** when asked if you want to generate a new product code.
7. Click **Files and Folders**
8. Drag the contents of the ```Package/Personal Edition/win-x64``` folder from step 1 into the ```Application Folder```.
9. Choose **Project -> Build** from the menu
10. Copy ```Installer/WorldOfWorkflowsPE.EXE``` to ```Package/WorldOfWorkflows_PE_1.7.xxx_win-x64.EXE``` where xxx is the version number.

Run the following to create the other versions:

### osx-arm64
```powershell
compress-Archive -Path '.\Personal Edition\osx-arm64\*' -DestinationPath .\WorldOfWorkflowsPE_1.7.457_osx-arm64.zip
```

### linux-x64
```powershell
compress-Archive -Path '.\Personal Edition\linux-x64\*' -DestinationPath .\WorldOfWorkflowsPE_1.7.457_linux-x64.zip
```

## 3. Business Edition

To create Packages, from the Package Folder, run the following:

```powershell
rm '.\Business Edition\osx-arm64\appsettings.json'
rm '.\Business Edition\win-x64\appsettings.json'
rm '.\Business Edition\linux-x64\appsettings.json'
compress-Archive -Path '.\Business Edition\osx-arm64\*' -DestinationPath .\WorldOfWorkflowsBE_1.7.457_osx-arm64.zip
compress-Archive -Path '.\Business Edition\win-x64\*' -DestinationPath .\WorldOfWorkflowsBE_1.7.457_win-x64.zip
compress-Archive -Path '.\Business Edition\linux-x64\*' -DestinationPath .\WorldOfWorkflowsBE_1.7.457_linux-x64.zip
```

## 3. Release to Github

1. Navigate to [Worflows University Releases](https://github.com/World-of-Workflows/WorkflowsUniversity/releases).
2. Click **Draft a New Release**
3. Click **Choose a Tag**
4. Type the new version number
5. Enter the New Version Number in the Title
6. Update the Release Notes
7. Add all the Zip files and Single EXE file from the Package Folder to the attach Binaries secion
8. Click **Publish Release**

Now create a new release and upload binaries in the BE site: https://github.com/World-of-Workflows/Business-Edition/releases

