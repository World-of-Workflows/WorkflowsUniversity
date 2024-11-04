WorldofWorkflows

# Introduction

Workflows consist of activities. Each activity has inputs and outputs. They all have a Name which we can use to refer to the activity and a Display Name which is how they appear in the designer UI. Workflows also have properties. Each input in a Workflow can be Text (Literal), JavaScript or Liquid. Activities are connected using connectors from one or more outputs of an activity to the input of the next activity. You can access the output of a previous activity using Liquid ```{{Activities.ActivityName.Output.Item}}``` or Javascript ```activities.activityname.Output();```. In the above examples, the ActivityName is set by the user in the Name Parameter. The Name Parameter defaults to blank which does not work. If you want to reference the output of an activity, you must set the activity's name in the Common Tab. Activities have outcomes. Many have a single outcome of **Done**. Outcomes can be connected to inputs of other activities using connectors. Activities must have a name to be able to reference it in a later activity.
Activity inputs can be Literal (text), JavaScript or Liquid. You need to select the type from the default (Literal) using the elipsis to the top right of the input field.

To add an activity to the designer, click **Add activity**. To change the parameters of an activity, Right click the activity and choose **Edit**. To delete an activity, right click the activity and choose **Delete**. To connect activities, click on the output of one activity and drag to the input of another activity. To disconnect activities, click on the connector and click the red X.

Once you create a workflow, you must publish it to make it available to be run. You can also create a version of the workflow. You can also unpublish a workflow. When you unpublish a workflow, it is no longer available to be run.

Workflows are available by navigating to Admin -> Workflows.

There you will see a list of Workflow Definitions. You can click on the name of the workflow to see the details of the workflow. You can also see the versions of the workflow and the published status of the workflow.

You can also see a list of instances that have run and examine these to see the results of your work.

Click **Create Workflow** to create a new workflow.

# Workflow Syntax
Workflows are saved as JSON files - Here is an example:

```json
{
    "$id":"1",
    "definitionId":"2b53aa739b244e2785cdd6ee7787b80e",
    "versionId":"17566d43bd5944679712f42e3051f20a",
    "version":1,
    "variables":
    {
        "$id":"2",
        "data":{}
    },
    "customAttributes":
    {
        "$id":"3",
        "data":{}
    },
    "isSingleton":false,
    "persistenceBehavior":"WorkflowBurst",
    "deleteCompletedInstances":false,
    "isPublished":true,
    "isLatest":true,
    "createdAt":"2024-10-29T02:21:40.2009569Z",
    "activities":
    [
        {
            "$id":"4",
            "activityId":"09715c96-8e4b-4f89-9794-cade80962add",
            "type":"HttpEndpoint",
            "displayName":"HTTP Endpoint",
            "x":64,
            "y":64,
            "persistWorkflow":false,
            "loadWorkflowContext":false,
            "saveWorkflowContext":false,
            "properties":
            [
                {
                    "$id":"5",
                    "name":"Path",
                    "expressions":
                    {
                        "$id":"6",
                        "Literal":"/tryme"
                    }
                },
                {
                    "$id":"7",
                    "name":"Methods",
                    "expressions":
                    {
                        "$id":"8",
                        "Json":"[\"GET\"]"
                    }
                },
                {
                    "$id":"9",
                    "name":"ReadContent",
                    "expressions":
                    {
                        "$id":"10",
                        "Literal":"true"
                    }
                },
                {
                    "$id":"11","name":"TargetType",
                    "expressions":
                    {
                        "$id":"12"
                    }
                },
                {
                    "$id":"13",
                    "name":"Schema",
                    "syntax":"Literal",
                    "expressions":
                        {
                            "$id":"14",
                            "Literal":""
                        }
                },
                {
                    "$id":"15",
                    "name":"Authorize",
                    "expressions":
                    {
                        "$id":"16"
                    }
                },
                {
                    "$id":"17",
                    "name":"Policy",
                    "expressions":
                    {
                        "$id":"18"
                    }
                },
                {
                    "$id":"19",
                    "name":"AuthorizeWithCustomHeader",
                    "expressions":
                    {
                        "$id":"20"
                    }
                },
                {
                    "$id":"21",
                    "name":"CustomHeaderName",
                    "expressions":
                    {
                        "$id":"22"
                    }
                },
                {
                    "$id":"23",
                    "name":"CustomHeaderValue",
                    "expressions":
                    {
                        "$id":"24"
                    }
                }
                ],
                "propertyStorageProviders":
                {
                    "$id":"25"
                }
        },
        {
            "$id":"26",
            "activityId":"82409db5-2ced-40f5-ae73-feb126346df7",
            "type":"WriteHttpResponse",
            "displayName":"HTTP Response",
            "x":400,
            "y":100,
            "persistWorkflow":false,
            "loadWorkflowContext":false,
            "saveWorkflowContext":false,
            "properties":[],
            "propertyStorageProviders":
            {
                "$id":"27"
            }
        }
    ],
    "connections":
    [
        {
            "$id":"28",
            "sourceActivityId":"09715c96-8e4b-4f89-9794-cade80962add",
            "targetActivityId":"82409db5-2ced-40f5-ae73-feb126346df7",
            "outcome":"Done"
        }
    ],
    "id":"17566d43bd5944679712f42e3051f20a"
}
```

# Activities

## HTTPEndpoint
The HTTP Endpoint triggers a workflow when it receives input to the path input. The path must start with a / and must be unique across all workflows. This can be via one of more of the methods GET, POST, PUT, DELETE, PATCH, OPTIONS or HEAD. You can select to Read Content which saves the request content body.

### Inputs
input - Object - The input object to the workflow. This can be a JSON object, a string or a number.

### Outputs
There is one output and a single outcome of done.
output - Object - This is the http request sent and looks like below:

```json
{
 "$id": "1",
 "path": "/tryme",
 "method": "GET",
 "queryString": {
  "$id": "2"
 },
 "routeValues": {
  "$id": "3",
  "$type": "Microsoft.AspNetCore.Routing.RouteValueDictionary, Microsoft.AspNetCore.Http.Abstractions",
  "path": "tryme"
 },
 "headers": {
  "$id": "4",
  "Accept": "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7",
  "Connection": "keep-alive",
  "Host": "localhost:7063",
  "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36",
  "Accept-Encoding": "gzip, deflate, br, zstd",
  "Accept-Language": "en-US,en-AU;q=0.9,en-GB;q=0.8,en;q=0.7",
  "Cookie": "_ga=GA1.1.135348403.1718676293; _ga_2VXF0S4G18=GS1.1.1730169022.101.1.1730169026.0.0.0",
  "Upgrade-Insecure-Requests": "1",
  "sec-ch-ua": "\"Chromium\";v=\"130\", \"Google Chrome\";v=\"130\", \"Not?A_Brand\";v=\"99\"",
  "sec-ch-ua-mobile": "?0",
  "sec-ch-ua-platform": "\"Windows\"",
  "DNT": "1",
  "Sec-Fetch-Site": "none",
  "Sec-Fetch-Mode": "navigate",
  "Sec-Fetch-User": "?1",
  "Sec-Fetch-Dest": "document"
 },
 "body": "",
 "rawBody": ""
}
```

## WriteHttpReponse
This activity writes a HTTP Response includes Content, Content Type which is the MIME Type of the content, e.g. text/html. You can also respond with a Status Code, Char Set and Response Headers.

### Inputs
input - Object - The input object to the workflow. This can be a JSON object, a string or a number.

### Outputs
There are no outputs, only a single outcome of done.


## SendHttpRequest
This activity sends a HTTP Request to a URL. You can set the URL, Method, Headers, Body and Timeout.

### Inputs
input - Object - The input object to the workflow. This can be a JSON object, a string or a number.
Url - String - The URL to send the request to.
Method - String - The HTTP Method to use. This can be GET, POST, PUT, DELETE, PATCH, OPTIONS or HEAD.
Content - String - The content to send in the request body.
ContentType - String - The MIME Type of the content.
ReadContent - Boolean - Whether to read the content of the response.
SupportedStatusCodes - Array - The status codes to accept. If the response status code is not in this list, the activity complete with the unsupported status code outcome. Otherwise each one here is an outcome.
Authorization - Object - The authorization object to use. This can be a bearer token, basic auth or a custom header. It is normally retrieved from the Credential Manager.
RequestHeaders - Object - The headers to send with the request.

### Outputs
The output is the response from the service.
The outcomes are done, Unsupported Status Code or the chosen StatusCode in SupportedStatusCodes input.



## Redirect
This activity sends a 302 redirect to the calling client.

### Inputs
input - Object - The input object to the workflow. This can be a JSON object, a string or a number.
Location - String - The URL to redirect to.
Permanent - Boolean - Whether the redirect is permanent (HTTP 301) or temporary.

### Outputs
There are no outputs, only a single outcome of done.