# Lab - Windows Sandbox
Windows Sandbox is a feature in Windows 10 and Windows 11 that provides a lightweight, isolated environment to safely run applications and browse websites without affecting your main system. It's particularly useful for testing untrusted software or visiting potentially unsafe websites. Here's how to set up, configure, and use Windows Sandbox:

**Prerequisites:**

- **Operating System:** Windows 10 Pro, Enterprise, or Education; or Windows 11 Pro, Enterprise, or Education.
- **Architecture:** 64-bit (AMD64) architecture.
- **Hardware Requirements:**
  - At least 4 GB of RAM (8 GB recommended).
  - At least 1 GB of free disk space (SSD recommended).
  - At least two CPU cores (four cores with hyperthreading recommended).
- **Virtualisation:** Virtualisation capabilities enabled in BIOS.

> **Note:** You may already have Windows Sandbox installed and configured. To check, press the Windows Key and then type "Sandbox" - If the Windows sandbox app appears, you're all set. If not, follow the steps below to enable and configure Windows Sandbox.

**Step 1: Enable Virtualisation in BIOS**

1. **Access BIOS/UEFI Settings:**
   - Restart your computer.
   - During startup, press the key (commonly `F2`, `F10`, `Delete`, or `Esc`) indicated on the screen to enter BIOS/UEFI settings.

2. **Enable Virtualisation:**
   - Navigate to the CPU configuration or advanced settings.
   - Find the option labelled "Intel Virtualisation Technology," "VT-x," "AMD-V," or similar.
   - Set it to "Enabled."

3. **Save and Exit:**
   - Save the changes and exit BIOS/UEFI settings.
   - Allow your computer to boot into Windows.

**Step 2: Enable Windows Sandbox Feature**

1. **Open Windows Features:**
   - Press `Win + R`, type `optionalfeatures.exe`, and press Enter.

2. **Enable Windows Sandbox:**
   - In the "Windows Features" window, scroll down and tick the box next to "Windows Sandbox."
   - Click "OK" and wait for the installation to complete.

3. **Restart Your Computer:**
   - If prompted, restart your computer to apply the changes.

**Step 3: Launch Windows Sandbox**

1. **Open Windows Sandbox:**
   - Press the `Start` button, type "Windows Sandbox," and press Enter.

2. **Use the Sandbox Environment:**
   - A new window opens, presenting a clean installation of Windows.
   - You can now install and run applications or browse websites within this isolated environment.

**Step 4: Configure Windows Sandbox (Optional)**

You can customise Windows Sandbox by creating a configuration file with the `.wsb` extension. This allows you to control features like virtualised GPU, networking, mapped folders, and startup commands.

1. **Create a Configuration File:**
   - Open Notepad or any text editor.
   - Enter the following XML structure:

     ```xml
     <Configuration>
         <!-- Configuration settings go here -->
     </Configuration>
     ```

2. **Add Configuration Settings:**
   - **Disable Virtualised GPU:**
     ```xml
     <VGpu>Disable</VGpu>
     ```
   - **Disable Networking:**
     ```xml
     <Networking>Disable</Networking>
     ```
   - **Map a Host Folder:**
     ```xml
     <MappedFolders>
         <MappedFolder>
             <HostFolder>C:\Path\To\Folder</HostFolder>
             <ReadOnly>true</ReadOnly>
         </MappedFolder>
     </MappedFolders>
     ```
   - **Run a Command at Startup:**
     ```xml
     <LogonCommand>
         <Command>notepad.exe</Command>
     </LogonCommand>
     ```

3. **Save the Configuration File:**
   - Save the file with a `.wsb` extension, for example, `MySandboxConfig.wsb`.

4. **Launch Windows Sandbox with Configuration:**
   - Double-click the `.wsb` file to start Windows Sandbox with your specified settings.

**Additional Configuration Options:**

- **Audio Input:** Share the host's microphone input into the sandbox.
  ```xml
  <AudioInput>Enable</AudioInput>
  ```
- **Video Input:** Share the host's webcam input into the sandbox.
  ```xml
  <VideoInput>Enable</VideoInput>
  ```
- **Protected Client:** Enable increased security settings on the Remote Desktop Protocol (RDP) session to the sandbox.
  ```xml
  <ProtectedClient>Enable</ProtectedClient>
  ```
- **Printer Redirection:** Share printers from the host into the sandbox.
  ```xml
  <PrinterRedirection>Enable</PrinterRedirection>
  ```
- **Clipboard Redirection:** Share the host clipboard with the sandbox to allow text and files to be pasted back and forth.
  ```xml
  <ClipboardRedirection>Enable</ClipboardRedirection>
  ```
- **Memory Allocation:** Specify the amount of memory, in megabytes, to assign to the sandbox.
  ```xml
  <MemoryInMB>4096</MemoryInMB>
  ```

**Security Considerations:**

While Windows Sandbox provides a secure environment, be cautious when sharing folders or enabling features like networking and clipboard redirection, as they can introduce potential risks. Always ensure that the content you interact with inside the sandbox does not compromise your host system.

For more detailed information and advanced configurations, refer to Microsoft's official documentation: citeturn0search3

By following these steps, you can effectively set up, configure, and utilise Windows Sandbox to enhance the security and reliability of your computing environment. 

# Lab Excercise - Windows Sandbox

Once you have followed steps 1, 2, and 3, we're going to configure an icon for Windows Sandbox. This will allow you to launch the sandbox directly from your desktop or taskbar, with configuration ready to perform all of the tasks needed across this course.

**Step 1: Create a Local Folder**
1. Open a Command Prompt
2. Run the following command to create a folder:
   ```cmd
   md c:\dev
   md c:\dev\WorkflowsCourse
   ```

**Step 2: Create a Configuration File**
1. Open Notepad or any text editor.
2. Enter the following XML structure:
   ```xml
   <Configuration>
       <VGpu>Disable</VGpu>
       <Networking>Enable</Networking>
       <MappedFolders>
           <MappedFolder>
               <HostFolder>C:\dev\WorkflowsCourse</HostFolder>
               <ReadOnly>false</ReadOnly>
           </MappedFolder>
       </MappedFolders>
   </Configuration>
   ```
3. Save the file with the name `WorkflowsCourse.wsb` in the `Desktop` folder.
4. Double click the new icon on the desktop to launch Windows Sandbox with the specified configuration.
5. You should see a folder on the desktop of the sandbox named `WorkflowsCourse` that is linked to the `c:\dev\WorkflowsCourse` folder on your host machine.




