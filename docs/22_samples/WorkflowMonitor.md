---
title: Workflow Fault Monitor
parent: Sample Workflows
layout: default
nav_order: 30
has_children: false
---

{% raw %}

# Monitoring Workflow faults

This example consists of 2 workflows:
- Workflow Fault Monitor 
   - A Workflow to check for new faults - <a href="./monitor-workflow-faults.json" download>download workflow </a> 
- Workflow Status Page
   - A workflow to display the status of faults - <a href="./workflow-status-page.json" download>download workflow </a> 

## Workflow Fault Monitor

We have developed this sample workflow to show how to integrate workflows with the World of Workflow API (see [Swagger](../11_Swagger/README.html) for the details of what the API can provide.)

In this workflow we 
- request a list of 'Faulted' workflows from the World of Workflows API, 
- check if this is a new fault, and if so
  - the save relevant details into the database
  - retrieve details of the faulting workflow from the API
  - ask ChatGPT for the cause of the fault
  - save the information back to the database
- displays the list of known faulting workflows.

The workflow titled "Monitor Workflow Faults" is designed to monitor and handle workflow faults by retrieving faulted workflow instances, analyzing them, and sending notifications. Below is a detailed description of the workflow, including key activities and important JavaScript snippets used throughout the process.

### Workflow Overview
- **Name:** Monitor Workflow Faults
- **Purpose:** The workflow monitors workflow instances for faults, logs them, analyzes the faults, and sends notifications with detailed fault information.

### Key Activities and Sequence Flow

1. **HttpEndpoint (httpStart)**
   - **Type:** `HttpEndpoint`
   - **Name:** `httpStart`
   - **Description:** Initiates the workflow upon receiving an HTTP GET request to the `/monitorWorkfow` endpoint.
   - **Properties:**
     - `Path`: `"/monitorWorkfow"`
     - `Methods`: `["GET"]`
     - `ReadContent`: `true`

2. **SetVariable (Set host)**
   - **Type:** `SetVariable`
   - **Name:** `Set host`
   - **Description:** Extracts the host information from the incoming request and stores it in a variable.
   - **JavaScript Code:**
     ```javascript
     activities.httpStart.Output().Headers.Host
     ```

3. **SendHttpRequest (requestFaultedWorkflowInstances)**
   - **Type:** `SendHttpRequest`
   - **Name:** `requestFaultedWorkflowInstances`
   - **Description:** Sends an HTTP GET request to retrieve faulted workflow instances from a specified endpoint.
   - **JavaScript Code for URL:**
     ```javascript
     'https://'+getVariable("host")+'/v1/workflow-instances?status=Faulted&page=0&pageSize=25'
     ```

4. **SetVariable (Set WorkflowInstances)**
   - **Type:** `SetVariable`
   - **Name:** `Set WorkflowInstances`
   - **Description:** Stores the retrieved faulted workflow instances.
   - **JavaScript Code:**
     ```javascript
     activities.requestFaultedWorkflowInstances.ResponseContent()
     ```

5. **ForEach (forEachWorkflowInstances)**
   - **Type:** `ForEach`
   - **Name:** `forEachWorkflowInstances`
   - **Description:** Iterates over each faulted workflow instance retrieved.
   - **JavaScript Code:**
     ```javascript
     getVariable("WorkflowInstances").items
     ```

6. **SetVariable (Set Instance)**
   - **Type:** `SetVariable`
   - **Name:** `Set Instance`
   - **Description:** Sets the current instance during iteration.
   - **JavaScript Code:**
     ```javascript
     activities.forEachWorkflowInstances.Output()
     ```

7. **ObjectInstanceList (List FaultedWorkflowInstancesID)**
   - **Type:** `ObjectInstanceList`
   - **Name:** `List FaultedWorkflowInstancesID`
   - **Description:** Retrieves faulted workflow instances by their ID.
   - **JavaScript Code for Filter:**
     ```javascript
     "WorkflowInstanceID eq '"+getVariable("Instance").id+"'"
     ```

8. **If (If FaultedWorkflowInstances found)**
   - **Type:** `If`
   - **Name:** `If FaultedWorkflowInstances found`
   - **Description:** Checks if any faulted workflow instances were found.
   - **JavaScript Code for Condition:**
     ```javascript
     activities.ListFaultedWorkflowInstancesID.Output().length > 0
     ```

9. **SendHttpRequest (getFaultedLog)**
   - **Type:** `SendHttpRequest`
   - **Name:** `getFaultedLog`
   - **Description:** Retrieves the faulted workflow log for the specific instance.
   - **JavaScript Code for URL:**
     ```javascript
     'https://'+getVariable("host")+'/v1/workflow-instances/'+getVariable("Instance").id
     ```

10. **SetVariable (Set FaultedLog)**
    - **Type:** `SetVariable`
    - **Name:** `Set FaultedLog`
    - **Description:** Stores the retrieved faulted log.
    - **JavaScript Code:**
      ```javascript
      activities.getFaultedLog.ResponseContent()
      ```

11. **SendHttpRequest (getWorkflowDefinition)**
    - **Type:** `SendHttpRequest`
    - **Name:** `getWorkflowDefinition`
    - **Description:** Retrieves the workflow definition for the current instance.
    - **JavaScript Code for URL:**
      ```javascript
      'https://'+getVariable("host")+'/v1/workflow-definitions/'+getVariable("Instance").definitionVersionId
      ```

12. **SetVariable (Set Workflow)**
    - **Type:** `SetVariable`
    - **Name:** `Set Workflow`
    - **Description:** Stores the retrieved workflow definition.
    - **JavaScript Code:**
      ```javascript
      activities.getWorkflowDefinition.ResponseContent()
      ```

13. **ObjectInstanceCreate (Create FaultedWorkflowInstance)**
    - **Type:** `ObjectInstanceCreate`
    - **Name:** `Create FaultedWorkflowInstance`
    - **Description:** Creates a new record for the faulted workflow instance.
    - **JavaScript Code:**
      ```javascript
      let i = getVariable("Instance")
      let w = getVariable("Workflow")
      return {
          "Title":w.displayName +' v '+ i.version + " fault at "+ new Date(i.faultedAt).toLocaleDateString(),
          "FaultDate":new Date(i.faultedAt),
          "WorkflowInstanceID":i.id,
          "WorkflowVersion":i.version,
          "WorkflowDisplayName":w.displayName,
          "WorkflowName":w.name,
          "ReportedDate":new Date(),
      }
      ```

14. **SetVariable (Set ChatResponse)**
    - **Type:** `SetVariable`
    - **Name:** `Set ChatResponse`
    - **Description:** Stores the response from a chat completion activity.
    - **JavaScript Code:**
      ```javascript
      activities.GetResponse.Output()
      ```

15. **ObjectInstanceUpdate (Update Object Instance)**
    - **Type:** `ObjectInstanceUpdate`
    - **Name:** `Update Object Instance`
    - **Description:** Updates the faulted workflow instance record with analysis results.
    - **JavaScript Code:**
      ```javascript
      return {
          "ChatAnalysis":getVariable("ChatResponse").choices[0].message.content,
          "Reported":true,
          "LinkToInstance":'https://'+getVariable("host")+'/workflowdashboard/workflow-instances/'+getVariable("FaultedLog").id
      }
      ```

16. **MarkdownToHtml (MakeHTML)**
    - **Type:** `MarkdownToHtml`
    - **Name:** `MakeHTML`
    - **Description:** Converts the markdown content of the chat response into HTML.
    - **JavaScript Code:**
      ```javascript
      'Fault url : https://'+getVariable("host")+'/workflowdashboard/workflow-instances/'+getVariable("FaultedLog").id+"\n\n"+
      getVariable("ChatResponse").choices[0].message.content
      ```

17. **MSGraphSendEmail (Send Email)**
    - **Type:** `MSGraphSendEmail`
    - **Name:** `Send Email`
    - **Description:** Sends an email notification with the fault analysis.
    - **JavaScript Code for BodyContent:**
      ```javascript
      activities.MakeHTML.Output()
      ```

### Summary

This workflow systematically handles faulted workflow instances by retrieving them, logging details, analyzing the fault through a chat completion, and notifying stakeholders via email. The process involves several HTTP requests to gather data, setting and updating variables to manage workflow state, and leveraging JavaScript for dynamic content generation and logic throughout the workflow.

## Workflow Status Page

### HTTP Response
The **HTTP Response** activity in this workflow is responsible for generating and sending the final HTML content back to the client as a response to the HTTP GET request made to the `/workflowStatus` endpoint. This activity uses a Liquid template to dynamically create the HTML content based on the data available from the workflow execution.

### Detailed Breakdown of the HTTP Response Activity

- **Type:** `WriteHttpResponse`
- **Name:** `HTTP Response`
- **Location in Workflow:** This activity is one of the final steps, which occurs after gathering all necessary data (e.g., faulted workflow instances) and determining the user's authorization.

- **Key Properties:**
  - **Content Syntax:** `Liquid`
    - The content of the HTTP response is written in Liquid syntax, allowing dynamic rendering of HTML using variables from the workflow.
  - **Content Expression:** This is where the actual HTML code is written using the Liquid template syntax. The content is a full HTML document that includes:

### HTML Structure and Liquid Syntax

1. **HTML Document Structure:**
   - The HTML document includes the following sections:
     - **DOCTYPE Declaration**: Specifies the HTML version.
     - **`<html>`** and `<head>` Sections: Contain metadata, character set, viewport settings, title, and links to external CSS libraries (Tailwind CSS and FontAwesome).
     - **`<body>` Section:** Contains the main content of the page, including a header, a table displaying faulted instances, and any associated styles.

2. **Dynamic Content Using Liquid:**
   - **Header Section:**
     ```liquid
     <header>
         <a href="/securenav" style="font-size: 24px;"><i class="fas fa-home"></i> Secure Menu</a>
         <a style="font-size: 24px;">Workflow Status</a>
         <a href="/azLogoff" style="font-size: 24px;"><i class="fas fa-lock"></i> {{ Variables.ReturnedUser.name }}</a>
     </header>
     ```
     - Displays links to the secure menu, the current page, and the logoff page.
     - The `{{ Variables.ReturnedUser.name }}` dynamically inserts the name of the returned user.

   - **Main Content:**
     - **Refresh Button:**
       ```html
       <a href="#" onclick="refreshPage()" id="refreshButton" class="bg-blue-500 text-white px-4 py-2 rounded hover:bg-blue-700 transition duration-300 relative inline-flex items-center">
           <span id="refreshText">Refresh</span>
           <svg id="spinner" class="hidden ml-2 w-4 h-4 text-white animate-spin" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24">
               <circle class="opacity-25" cx="12" cy="12" r="10" stroke="currentColor" stroke-width="4"></circle>
               <path class="opacity-75" fill="currentColor" d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4z"></path>
           </svg>
       </a>
       ```
       - A button to refresh the page, which shows a spinning icon while the page reloads.

     - **Table of Faulted Instances:**
       ```liquid
       <table class="min-w-full divide-y divide-gray-200">
           <thead class="bg-gray-50">
               <tr>
                   <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Fault Date</th>
                   <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Workflow</th>
                   <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Version</th>
                   <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Reported Date</th>
                   <th colspan="2" scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Acknowledged</th>
                   <th scope="col" class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">Actions</th>
               </tr>
           </thead>
           <tbody class="bg-white divide-y divide-gray-200">
               {% assign instances = Variables.Instances %}
               {% for instance in instances %}
               <tr>
                   <td class="px-6 py-4 whitespace-nowrap">{{ instance.FaultDate }}</td>
                   {% if instance.LinkToInstance %}
                       <td class="px-6 py-4 whitespace-nowrap"><a href="{{ instance.LinkToInstance }}" target="_blank" class="text-blue-600 hover:text-blue-900">{{ instance.WorkflowName }}</a></td>
                   {% else %}
                       <td class="px-6 py-4 whitespace-nowrap">{{ instance.WorkflowName }}</td>
                   {% endif %}
                   <td class="px-6 py-4 whitespace-nowrap">{{ instance.WorkflowVersion }}</td>
                   <td class="px-6 py-4 whitespace-nowrap">{{ instance.ReportedDate }}</td>
                   <td class="px-6 py-4 whitespace-nowrap">
                       <input type="checkbox" {% if instance.Acknowledged %} checked {% endif %} disabled class="h-4 w-4 text-blue-600 border-gray-300 rounded">
                   </td>
                   <td class="px-6 py-4 whitespace-nowrap">
                       {% if instance.Acknowledged %}
                           {{ instance.AcknowledgedDate }}
                       {% else %}
                           <form id="acknowledgeForm-{{ instance.ObjectId }}" onsubmit="acknowledgeFault(event, '{{ instance.ObjectId }}')" class="inline">
                               <input type="hidden" name="objectId" value="{{ instance.ObjectId }}">
                               <button type="submit" class="text-green-500 hover:text-green-700 transition duration-300">
                                   <i class="fas fa-check-circle fa-lg"></i>
                               </button>
                           </form>
                       {% endif %}
                       <form id="deleteForm-{{ instance.ObjectId }}" onsubmit="deleteFault(event, '{{ instance.ObjectId }}')" class="inline">
                           <input type="hidden" name="objectId" value="{{ instance.ObjectId }}">
                           <button type="submit" class="text-red-500 hover:text-red-700 transition duration-300">
                               <i class="fas fa-trash-alt fa-lg"></i>
                           </button>
                       </form>
                   </td>
                   <td class="px-6 py-4 whitespace-nowrap">
                       <button data-chat-analysis="{{ instance.ChatAnalysis | escape }}" onclick="showChatAnalysis(this)" class="bg-blue-500 text-white px-4 py-2 rounded hover:bg-blue-700 transition duration-300 mt-2">Analysis</button>
                   </td>
               </tr>
               {% endfor %}
           </tbody>
       </table>
       ```
       - **Instances Data Binding:** The table dynamically binds to `Variables.Instances`, iterating over each instance to display details such as fault date, workflow name, version, and actions for acknowledgment or deletion.
       - **Conditional Rendering:** It uses conditional logic (`{% if ... %}`) to determine whether to show certain elements, such as whether the instance has been acknowledged.

3. **Footer (Powered By Image):**
   - **Base64 Encoded Image:** An image is included at the bottom of the page, represented by a base64-encoded string of the logo.

### Summary

The `HTTP Response` activity is crucial for dynamically generating and returning the HTML content that forms the workflow status page. It integrates Tailwind CSS for styling and uses JavaScript for handling user interactions like acknowledging faults or deleting instances. The Liquid template syntax is used extensively to inject dynamic content based on the data collected during the workflow execution. This setup allows for a responsive and interactive web page that reflects the current state of workflow instances.


{% endraw %}