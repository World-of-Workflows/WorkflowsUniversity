# 10. Integrating Plugins and Extensions

Enhancing the capabilities of World of Workflows is achievable through the integration of various plugins and extensions. This module explores the Utilities plugin, the MSGraph plugin, and the OpenAI plugin, detailing their functionalities and integration processes.

## 10.1 Utilities Plugin

The Utilities plugin offers a collection of helpful activities designed to extend the functionality of your workflows. It is recommended for most World of Workflows environments.

**Key Features:**

- **PDF to Text:** Extracts unformatted text from a PDF file, useful for processing PDF content within workflows.
- **HTML to Markdown:** Converts HTML content into Markdown format, facilitating content transformation.
- **Markdown to HTML:** Converts Markdown content back into HTML, enabling flexible content rendering.
- **Base64 to Byte Array:** Decodes a Base64 string into a byte array, useful for handling encoded data.
- **Byte Array to Base64:** Encodes a byte array into a Base64 string, aiding in data transmission and storage.
- **JWT Decoder:** Decodes JSON Web Tokens (JWT) into their constituent parts, assisting in authentication processes.
- **Multipart Form Data Parser:** Parses multipart form data from an HTTP endpoint, enabling file uploads and form submissions.

**Integration Steps:**

1. **Download the Plugin:**
   - Access the Utilities plugin from the [World of Workflows Extensions](https://www.worldofworkflows.com/extensions-1) page.

2. **Install the Plugin:**
   - Navigate to the *Admin* section in your World of Workflows instance.
   - Select *Plugins* and click *Add Plugin*.
   - Upload the downloaded plugin file and follow the on-screen instructions to complete the installation.

3. **Utilise the Plugin Activities:**
   - In your workflows, add activities from the Utilities plugin as needed to enhance functionality.

For detailed information, refer to the [Utilities Plugin Documentation](https://world-of-workflows.github.io/WorkflowsUniversity/docs/19_plugins/utilities.html).

## 10.2 MSGraph Plugin

The MSGraph plugin enables integration with Microsoft 365 services, allowing workflows to interact with emails, calendars, OneNote, SharePoint, ToDo, and user data.

**Key Features:**

- **Email Management:** Send, receive, and manage emails within workflows.
- **Calendar Integration:** Create and manage calendar events.
- **OneNote Access:** Interact with OneNote notebooks and pages.
- **SharePoint Operations:** Perform actions on SharePoint sites and lists.
- **ToDo Tasks:** Manage Microsoft ToDo tasks.
- **User Data:** Access and modify user information.

**Integration Steps:**

1. **Download the Plugin:**
   - Obtain the MSGraph plugin from the [World of Workflows Extensions](https://www.worldofworkflows.com/extensions-1) page.

2. **Install the Plugin:**
   - Navigate to the *Admin* section in your World of Workflows instance.
   - Select *Plugins* and click *Add Plugin*.
   - Upload the downloaded plugin file and follow the on-screen instructions to complete the installation.

3. **Configure Microsoft Entra ID:**
   - Register an application in Microsoft Entra ID to obtain the necessary credentials.
   - Set the redirect URI to `<<Server-URL>>/v1/oauth2/callback`, replacing `<<Server-URL>>` with your server's URL.
   - Gather the Authorization Endpoint, Token Endpoint, Client ID, and Client Secret from the application registration.

4. **Set Up the Plugin in World of Workflows:**
   - In the *Admin* section, navigate to *Settings* and select *MSGraph Plugin*.
   - Enter the gathered credentials and configure the desired scopes (e.g., `offline_access user.read mail.readwrite`).

5. **Utilise the Plugin Activities:**
   - In your workflows, add activities from the MSGraph plugin to interact with Microsoft 365 services.

For comprehensive guidance, consult the [MSGraph Plugin Documentation](https://world-of-workflows.github.io/WorkflowsUniversity/docs/19_plugins/msgraph_plugin.html).

## 10.3 OpenAI Plugin

The OpenAI plugin integrates OpenAI's language models into your workflows, enabling advanced natural language processing capabilities.

**Key Features:**

- **Chat Completions:** Generate conversational responses based on input prompts.
- **Text Generation:** Create human-like text for various applications.
- **Data Analysis:** Perform sentiment analysis, summarisation, and more.

**Integration Steps:**

1. **Obtain an API Key:**
   - Sign up for an account with OpenAI and generate an API key.

2. **Download the Plugin:**
   - Access the OpenAI plugin from the [World of Workflows Extensions](https://www.worldofworkflows.com/extensions-1) page.

3. **Install the Plugin:**
   - Navigate to the *Admin* section in your World of Workflows instance.
   - Select *Plugins* and click *Add Plugin*.
   - Upload the downloaded plugin file and follow the on-screen instructions to complete the installation.

4. **Configure the Plugin:**
   - In the *Admin* section, navigate to *Settings* and select *OpenAI Plugin*.
   - Enter your OpenAI API key and configure any additional settings as needed.

5. **Utilise the Plugin Activities:**
   - In your workflows, add activities from the OpenAI plugin to incorporate natural language processing capabilities.

For detailed instructions, refer to the [OpenAI Plugin Documentation](https://world-of-workflows.github.io/WorkflowsUniversity/docs/19_plugins/openai_plugin.html).

By integrating these plugins and extensions, you can significantly enhance the functionality of your workflows, enabling seamless interaction with external services and advanced data processing capabilities. 