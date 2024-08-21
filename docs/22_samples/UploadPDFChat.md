---
title: Upload PDF File and ask ChatGPT
parent: Sample Workflows
layout: default
nav_order: 30
has_children: false
---

{% raw %}

# Upload a PDF File and ask ChatGPT for analysis

This example consists of  <a href="./compare-phone-bill.json" download>this workflow </a> which will  
1. display a web page asking for a PDF file to be uploaded,
2. receive the PDF file,  
3. convert the PDF file to text,  
4. send the text from the PDF to ChatGPT,  
5. display the response from ChatGPT back to the web page displayed in step 1.


The original scope for this workflow was to use it to analyse a phone bill, hence the branding on the web page.  You can use it with appropriate prompts to ask ChatGPT to interpret the PDF as required.

{: .key }
The Chat prompt is contained in a *Settings* variable called `ChatPrompt`.  The value for this prompt will depend on the purpose to which you adapt this sample.

This workflow uses the **Granular Access Control** mechanism to ensure the user has rights to the functionality.  A sample of this mechanism will shortly be available on the University; contact us for more detail in the meantime.

### Recommended Enhancements
This sample workflow can be enhanced with additional error checking.  

We have found that the response from the `Chat Completions` activity is varied, which may not satisfy the requirements of your workflow.  We recommend replacing the `Chat Completions` activity with a `Chat Completions with Functions` activity to specify the format of the response from ChatGPT.  This will give greater control and consistency in the response from ChatGPT.  


## Part 1 - ask for a PDF file

The first part of this workflow requests a PDF file.

### Key Steps in the Workflow:

1. **HTTP Endpoint Setup (`httpPhoneBillCompare`)**:
   - This activity defines an HTTP GET endpoint (`/phoneBillCompare`), which is used to trigger the workflow when a request is made to this URL. The workflow is initiated when a user accesses this endpoint.

2. **Run Workflow for Authorization (`runAuthGetPermissions`)**:
   - This activity runs a sub-workflow to check if the user has the required permissions to proceed with the comparison. The output from this sub-workflow includes user permissions and is used to determine if the user can proceed.

3. **Set Variables (`Set ReturnedUser`)**:
   - After authorization, this activity sets the `ReturnedUser` variable with the user information obtained from the previous step, ensuring the workflow can reference the authenticated user throughout the process.  
   - The *Style* variable contains this value:
  ```css
      .modal {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
            display: flex;
            justify-content: center;
            align-items: center;
            z-index: 1000;
            display: none;
        }

        .modal-content {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            max-width: 400px;
            width: 100%;
        }

        .modal-header {
            font-size: 20px;
            margin-bottom: 20px;
        }

        .modal-footer {
            display: flex;
            justify-content: flex-end;
            margin-top: 20px;
        }

        .modal-footer button {
            margin-left: 10px;
        }
        .powered-by {
            position: fixed;
            bottom: 10px;
            right: 10px;
            width: 300px; /* Adjust width as needed */
            opacity: 1;
        }
        .powered-by:hover {
            opacity: 0;
        }
        .spinner {
            border: 4px solid rgba(0, 0, 0, 0.3); /* Light gray border for better visibility */
            border-left-color: #000000; /* Black color for the spinning part */
            border-radius: 50%;
            width: 24px;
            height: 24px;
            animation: spin 1s linear infinite;
        }

        @keyframes spin {
            0% { transform: rotate(0deg); }
            100% { transform: rotate(360deg); }
        }

        .content-container {
            padding: 20px;
        }
        .scrollable-content {
            height: calc(100vh - 100px); /* Adjust height to exclude the header */
            overflow-y: auto;
        }
   
        body {
            font-family: Arial, sans-serif;
            background-color: #e0f7fa; /* Light blue background */
            display: flex;
            justify-content: center;
            align-items: center;
           // height: 100vh;
            margin: 0;
           padding-top: 130px; /* Added padding to body */
        }
        header {
            background: #fcfc00; /* yellow background */
            color: white;
            font-size: 24px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            width: 100%;
            padding: 10px 20px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            position: fixed;
            top: 0;
            left: 0;
            z-index: 1000;
        }
        header a {
            color: black;
            text-decoration: none;
            padding-left: 20px;
            padding-right: 20px;
        }
        nav {
            background: #fcfc00; /* yellow background */
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
        }
        ul {
            list-style: none;
            padding: 0;
        }
        li {
            margin-bottom: 10px;
        }
        a {
            text-decoration: none;
            color: white;
            font-size: 18px;
            transition: color 0.3s ease;
        }
        a:hover {
            color: #ff6f61;
        }
        i {
            margin-right: 8px;
        }
        th {
            position: sticky;
            top: 100;
            background-color: #fcfc00; /* same as the header's background */
            z-index: 10;
        }
  ``` 

4. **Create Import Log Object (`createImportObject`)**:
   - This activity creates an entry in the `VoiceChargesImport` object to log the details of the import operation, such as the import date and the OneDrive file location. This object is important for tracking the imported phone bill data.

5. **Setup Date Variables (`setup date variables for charges`)**:
   - This step involves running a JavaScript code block to set up date variables (`formattedTodayDate` and `formattedLastMonthDate`). These variables are used to format and compare the billing data within the correct time frame.

6. **Write HTTP Response (`HTTP Response - ask for file`)**:
   - The workflow sends an HTTP response back to the client with an HTML page, prompting the user to upload their phone bill PDF file. The HTML includes options for selecting the vendor (e.g., Telstra, Optus) and a button to upload the file.

7. **Call part 2** and wait for a response
   - The `Write HTTP Response` activity sends the PDF file, it's name & size to the **Part 2** HTTP Endpoint.  It waits for a JSON response and displays the result. 
  - Additional formatting of this response will be required.



## Part 2 - POST to `/api/UploadPhoneBill` with Chat Completions Interaction

1. **Endpoint Definition**:
   - The workflow includes an HTTP POST endpoint at `/api/UploadPhoneBill`. This endpoint is designed to receive the user's phone bill PDF file, along with metadata like the vendor selected by the user.

2. **File Upload Handling**:
   - When the user uploads a file via this endpoint, the workflow captures the file's contents. The file and associated metadata are processed to extract relevant billing information for comparison.
  
3. **Conversion of the PDF to Text**
   - The PDF file is converted to a text stream using the `PDF To Text` activity from the **Utilities plugin**

4. **Interaction with Chat Completions**:
   - After the file is converted to text, the workflow interacts with an external Chat Completions API. This could be used to:
     - Generate a summary or a detailed analysis of the phone bill.
     - Provide suggestions or feedback based on the content of the uploaded file.
     - Assist in interpreting the billing data, such as explaining charges or identifying unusual patterns.

   - The interaction sends the extracted data and a specific prompt to the Chat Completions service, which then returns a response used within the workflow. This response is incorporated into the final output presented to the user.


5. **Validation and Error Handling**:
   - The workflow includes validation steps to ensure that the file is in the correct format and contains the necessary data. Errors encountered during file processing or Chat Completions interaction are captured and returned to the user.

6. **Logging and Tracking**:
   - Details of the upload, such as the time, user information, and any processing errors, are logged. This information is stored in an `ImportLog` object.

7. **Response to Client**:
   - The workflow sends a JSON response back to **Part 1** after processing is complete. This response might include:
     - A summary or analysis generated through Chat Completions.
     - Confirmation of successful upload and processing.
     - Any errors or issues that were encountered, along with guidance on resolving them.
   - Review the response to ensure that this covers the expected response from ChatGPT.

### Summary:
The POST to `/api/UploadPhoneBill` not only handles the file upload and processing but also leverages an external Chat Completions API to enhance the workflow. This interaction allows the workflow to generate intelligent summaries, provide feedback, and assist the user in interpreting their phone bill, making the entire process more interactive and user-friendly.



{% endraw %}