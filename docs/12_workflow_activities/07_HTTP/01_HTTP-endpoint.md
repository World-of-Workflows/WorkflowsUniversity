---
title: HTTP Endpoint
layout: default
nav_order: 1
parent: HTTP
grand_parent: Workflow Activities
---

# HTTP Endpoint

This **trigger** waits for activity on the defined path using the defined method and then can read content and move further in the Workflow.

## Inputs

- Properties
  - **Path** - The relative path that triggers this activity. Good paths are ```/endpoint``` or even ```/```.
  - **Methods** - This is the HTTP Method the client uses to send the data and can be on or many of:
    - **Get** - Commonly used to retrieve information with no or little input
    - **Post** - Commonly used to create new entities.
    - **Put** - Commonly used to update an existing entity totally.
    - **Delete** - Commonly used to delete an entity
    - **Patch** - Commonly used to update part of an entity.
    - **Options** - An OPTIONS request method allows a client to discover how it can interact with a resource.
    - **Head** - A HEAD request returns metadata about the resource rather than how we can interact with it.
  - **Read Content** - A value indicating whether the HTTP request content body should be read and stored as part of the HTTP request model. *The stored format depends on the content-type header*.
- Advanced
  - **Target Table** - Used to enforce the type of data we are expecting to receive. This can be any loaded dotnet type.
  - **Schema** - This is a JSON Schema of the data we are expecting to receive.
- Security
  - **Authorize** - Check to only allow requests that satisfy a specified policy
  - **Policy** - A policy to evaluate. If the policy fails, the request is forbidden.
  - **Authorize with Custom header** - Check to only allow requests that have a specified header with a specified value.
  - **Custom Header Name** - The name of the custom header
  - **Custom Header Value** - The expected value of the custom header.