---
title: Saving an HTML page to PDF
parent: Sample Workflows
layout: default
nav_order: 40
has_children: false
---

{% raw %}

# Saving an HTML page to PDF

This example shows you how to add a workflow to a create a PDF from a web page (or any HTML) and then download the resulting PDF to the client's download folder.

This example consists of 2 workflows:
- pdfThisPage 
   - A Workflow to make the PDF from  - <a href="./pdf-this-page.json" download>download `pdfThisPage` workflow </a> 
- A simple HTML-display workflow
   - A workflow to display a web page that can be tuyrned into a PDF - <a href="./sample1-html-to-pdf.json" download>download `sample` workflow </a> 

## pdfThisPage

This workflow uses the [RPA Plugin](../19_plugins/RPA.html) to build a PDF page.  

The workflow exposes a POST HTTP Endpoint called /pdfThisPage.  It expects a Body field to be POSTed to it.  

The workflow opens a headless (ie invisible) Browser, opens a blank page, and uses the page to convert the supplied HTML to a PDF. 

It then turns the Byte Array of the PDF into a Base64 text file and sends this back to the calling browser.  


### Workflow Overview

This workflow automates the process of converting an HTML page into a downloadable PDF file through an API endpoint.

This workflow, named `pdfThisPage`, is designed to convert an HTML page into a PDF file. Here is a breakdown of the workflow based on its components:

1. **POST Endpoint** (`HttpEndpoint`):
   - The workflow begins by exposing a POST endpoint at `/pdfThisPage`. It listens for POST requests and reads the content of the request body, which likely contains the HTML that needs to be converted to a PDF.

2. **Correlate Activity** (`Correlate`):
   - This step sets up a correlation, which is typically used to link related activities or processes. It seems to be used here for managing the incoming data, with a value of "Creating PDF from current page".

3. **Open Browser** (`OpenABrowser`):
   - A headless browser (Chromium) is launched to simulate loading the page in a real browser environment. The headless setting allows it to operate without a graphical interface.

4. **Open Page** (`OpenAPage`):
   - A page is opened within the browser session created in the previous step. The specific URL or content to load is based on the output of previous activities, potentially from the POST body or the page content specified earlier.

5. **Convert HTML to PDF** (`HTMLToPDF`):
   - The core of the workflow happens here, where the HTML content is converted into a PDF file. The page format is set to A4, and headers and footers are defined with custom content. The margins are specified, and CSS page sizes are preferred to ensure a more accurate conversion.

6. **Convert Byte Array to Base64** (`ByteArrayToBase64`):
   - The generated PDF is converted into a Base64-encoded string. This is useful for embedding the PDF in a response or passing it in an API call without saving the file to the server.

7. **Set Variable** (`SetVariable`):
   - The Base64 PDF string is stored in a variable named `PDFasBase64`, which will be used in the final response.

8. **Write HTTP Response** (`WriteHttpResponse`):
   - The workflow sends an HTTP response containing the Base64-encoded PDF. The content type is set to `text/plain`, and the response status is set to `OK`.

9. **Close Browser** (`CloseABrowser`):
   - The browser session is closed to free up resources once the PDF conversion is complete.

### Flow:
- The request comes in via the POST endpoint, the page is loaded and converted into a PDF using a headless browser, and the PDF is then encoded as Base64 and returned in the response.


## Example HTML Workflow Page

This example shows how to add the PDF button to your web page.  
It uses Settings to minimise the amount of code in each page.

This World of Workflows workflow, named **SAMPLE1_HTML_to_PDF**, is designed to display an HTML page that can be converted into a PDF. In this example we have chosen to display the list of Settings.  You can of course modify this to suit your needs.

The workflow listens for a GET request on the `/sample1` endpoint and dynamically generates an HTML page listing all settings, with options for further actions such as creating a PDF.

### Workflow Overview:
- **Name**: SAMPLE1_HTML_to_PDF
- **Endpoint**: `/sample1`
- **Purpose**: The workflow retrieves settings from the database, displays them on a web page, and provides a button to generate a PDF from the page.

### Workflow Breakdown:

1. **HTTP Endpoint (`HttpEndpoint`)**:
   - **Activity**: `httpSample1`
   - **Type**: GET
   - **Path**: `/sample1`
   - **Purpose**: This activity starts the workflow when a GET request is made to `/sample1`.

2. **Correlate (`Correlate`)**:
   - There are two correlate activities:
     1. **Correlate 1**: Shows a message indicating that the workflow is "getting ready to show a page."
     2. **Correlate 2**: Displays a message "showing a page."

3. **ObjectInstanceList (`ListSettings`)**:
   - **Purpose**: This activity fetches all settings from the `Settings` object. The `Expand` property is set to `true`, meaning related objects are also retrieved if they exist.
   - The output from this activity is used to populate the settings list in the HTML response.

4. **JavaScript Setup (`RunJavaScript`)**:
   - **Purpose**: This activity runs a JavaScript script to map specific settings from the `Settings` object to variables that are used in the HTML template. It dynamically assigns values to variables such as `PoweredBy`, `StandardHeaderMatter`, `Style`, `PDFButton`, and `PDFButtonJS`.
   - **Script**: The script iterates over the settings output, matches settings by title, and assigns their values to the relevant variables for use in the HTML page.

5. **HTML Response (`WriteHttpResponse`)**:
   - **Content**: This activity generates the HTML content that will be displayed as a web page. The page includes:
     - **Header**: Displays the title "Settings" and formats the page using Tailwind CSS.
     - **Settings Table**: The workflow iterates through the list of settings and displays each setting as a row in a table, with pagination (a new table starts every 15, 50, 75, and 100 rows).
     - **Buttons**:
       - **Go Back**: A button that navigates back to the previous page.
       - **PDF Button**: A button that triggers the PDF generation of the current page.

   - The HTML response is returned with a `Content-Type` of `text/html` and a status code of `200 OK`.

6. **Pagination Logic**:
   - The workflow handles pagination within the table, restarting the table every 15, 50, 75, and 100 rows. This ensures that the page can handle large datasets without overloading the display.

7. **Additional Buttons and Functionality**:
   - The page includes a "Go Back" button and a "PDF" button, both dynamically generated using values from the settings.
   - A hidden input field stores the `PDFFileName` variable, which contains the name of the PDF file when generated.

### Key Activities:
- **ListSettings**: This activity fetches all settings from the `Settings` object and prepares them to be displayed on the page.
- **JavaScript (`RunJavaScript`)**: Sets up the page's styling and layout by assigning variables based on the settings retrieved.
- **WriteHttpResponse**: Generates and sends the HTML page to the user, displaying all settings and providing buttons for additional functionality.

### HTML Response Example:
The HTML generated by the workflow includes:
- **Settings Table**: Displays key-value pairs of the settings in a table format.
- **Pagination**: Handles long lists of settings by paginating the display.
- **Buttons**: Includes buttons for navigating back and generating a PDF.

### Workflow Flow:
1. A GET request is received at `/sample1`.
2. The settings are fetched using `ListSettings`.
3. The page's variables are dynamically set using a JavaScript function.
4. The HTML page is generated, displaying the settings in a table with pagination.
5. Buttons allow for navigation and generating a PDF.

This workflow is designed for listing settings on a web page and allowing the user to export the page to a PDF. It uses dynamic JavaScript to handle the page's layout and functionality based on the settings retrieved.


{% endraw %}