---
title: Using fetch to POST to the server 
layout: default
parent: Sample Workflows
xgrand_parent: Reference
nav_order: 6
---
{% raw %}

# Using Fetch to POST data to your server

Let's say you want to get data from your World of Workflows server without the user navigating away from your web page.

An easy way to do this is with the http `Fetch` command.  Here is an example:

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Send HTML to Server</title>
</head>
<body>
    <button id="sendHtmlButton">Send Page HTML</button>

    <script>
        document.getElementById('sendHtmlButton').addEventListener('click', function() {
            // Get the HTML of the current page
            const pageHtml = document.documentElement.outerHTML;

            // Create a POST request to send the HTML
            fetch('/pdfThisPage', {
                method: 'POST',
                headers: {
                    'Content-Type': 'text/plain',
                },
                body: pageHtml,
            })
            .then(response => {
                if (!response.ok) {
                    throw new Error('Network response was not ok');
                }
                return response.text(); // or response.json() if your server returns JSON
            })
            .then(data => {
                console.log('Success:', data);
            })
            .catch((error) => {
                console.error('Error:', error);
            });
        });
    </script>
</body>
</html>
```

Certainly! Let's break down the provided HTML and JavaScript code in detail.

### HTML Structure

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Send HTML to Server</title>
</head>
<body>
    <button id="sendHtmlButton">Send Page HTML</button>
```

1. **DOCTYPE Declaration**: The `<!DOCTYPE html>` declaration defines the document type and version of HTML being used. In this case, it's HTML5.

2. **HTML Element**: The `<html lang="en">` tag indicates that the document is in English. The `lang` attribute helps with accessibility and search engine optimization.

3. **Head Section**: The `<head>` element contains metadata and information about the document:
   - `<meta charset="UTF-8">`: This meta tag specifies the character encoding for the document, ensuring that it correctly displays special characters and symbols.
   - `<meta name="viewport" content="width=device-width, initial-scale=1.0">`: This meta tag makes the website responsive on mobile devices by controlling the page's dimensions and scaling.
   - `<title>Send HTML to Server</title>`: The title tag sets the text that appears in the browser tab or window for this document.

4. **Body Section**: The `<body>` element contains the content of the webpage that is visible to users. In this case, there’s a button:
   - `<button id="sendHtmlButton">Send Page HTML</button>`: This button has the ID `sendHtmlButton` and displays the text "Send Page HTML". It will trigger a JavaScript function when clicked.

### JavaScript Functionality

```javascript
<script>
    document.getElementById('sendHtmlButton').addEventListener('click', function() {
        // Get the HTML of the current page
        const pageHtml = document.documentElement.outerHTML;

        // Create a POST request to send the HTML
        fetch('/pdfThisPage', {
            method: 'POST',
            headers: {
                'Content-Type': 'text/plain',
            },
            body: pageHtml,
        })
        .then(response => {
            if (!response.ok) {
                throw new Error('Network response was not ok');
            }
            return response.text(); // or response.json() if your server returns JSON
        })
        .then(data => {
            console.log('Success:', data);
        })
        .catch((error) => {
            console.error('Error:', error);
        });
    });
</script>
```

1. **Event Listener**: 
   - `document.getElementById('sendHtmlButton').addEventListener('click', function() { ... });`: This line selects the button by its ID and adds a click event listener to it. When the button is clicked, the anonymous function defined within will execute.

2. **Get Page HTML**:
   - `const pageHtml = document.documentElement.outerHTML;`: This line captures the entire HTML content of the current page, including the `<html>` and `<body>` tags, and stores it in the `pageHtml` variable. The `outerHTML` property retrieves the HTML markup of the selected element.

3. **Fetch API**:
   - `fetch('/pdfThisPage', { ... })`: This line makes a network request to the `/pdfThisPage` endpoint on the server. It uses the Fetch API, which is a modern way to make HTTP requests in JavaScript.
   - **Request Configuration**:
     - `method: 'POST'`: Specifies that the request method is POST, which is typically used for sending data to the server.
     - `headers: { 'Content-Type': 'text/plain' }`: Sets the `Content-Type` header to indicate that the body of the request will contain plain text. This informs the server about the type of data being sent.
     - `body: pageHtml`: This is where the captured HTML content is sent as the body of the POST request.

4. **Promise Handling**:
   - `.then(response => { ... })`: This method handles the response returned by the `fetch` call. It checks if the response is OK (status code in the range 200-299).
     - `if (!response.ok) { throw new Error('Network response was not ok'); }`: If the response is not OK, it throws an error.
     - `return response.text();`: If the response is OK, it processes the response body as text.
   
5. **Success Handling**:
   - `.then(data => { console.log('Success:', data); })`: This chain captures the processed text data returned from the server and logs it to the console.

6. **Error Handling**:
   - `.catch((error) => { console.error('Error:', error); })`: This block catches any errors that occur during the fetch operation or response handling and logs the error message to the console.

### Summary

- The HTML creates a simple webpage with a button that, when clicked, gathers the entire HTML of the page and sends it to a specified server endpoint (`/pdfThisPage`) via a POST request.
- The JavaScript utilizes the Fetch API for asynchronous network requests and includes error handling to ensure that any issues during the request process are properly managed.
- This structure is useful for scenarios where you need to send the current state of a webpage to the server, such as generating a PDF or saving the HTML content for processing.

{% endraw %}