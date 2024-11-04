---
title: Sample Web Menu page
parent: Web UI
layout: default
nav_order: 36
has_children: false
---

This <a href="./sample-main-nav.json" download>sample `sample man nav` workflow </a> shows how to build a simple menu web page.  

This workflow has these features:
- an HTTP Endpoint to respond to a user request
- getting variables from a listing of relevant Settings type objects
- an HTTP Response to display the menu in the middle of the screen, with some simple decorations.
- clean up the execution logs after itself, using the  <a href="../22_samples/kill-workflow-instances-by-name.json" download>cleanup workflow </a> workflow.  See [details here ](../22_samples/CleanUpWorkflows.html)