---
title: Plugins
layout: default
nav_order: 20
has_children: true
---

# Plugins in World of Workflows

Plugins are libraries of activities which can be dynamically added to World of Workflows.

These libraries must be digitally signed with the World of Workflows certificate, to ensure that malicious code does not get into customers hands, however library authors can create libraries and submit them for approval.


The following Plugins are available:

~- [AzureAdmin](azureadmin.md) - This plugin provides tools for working with Azure~

- [Utilities](utilities.md) - This plugin contains a number of useful utilities  
  - HTML to Markdown - Converts HTML to Markdown
  - Markdown to HTML - Converts Markdown to HTML
  - PDF to Text - Extracts the text from a PDF file with OCR or tect overlay
  - Byte Array to Base64 - Converts a byte array to a base64 string
  - JWT Decoder - decodes a JWT into consitituent parts 
  - JWT Decoder - validates a JWT 
  - Parse Multipart form data from an HTML Endpoint
  - Base64 to Byte array - reads a Base64 data string and outputs a Byte array

- [Autotask](autotask.md) - A plugin to read and write Autotask data

- [Xero](xero.md) - A Plugin to read and write Xero data
- [SQL](sql.md) - A Plugin to execute SQL commands from within a Workflows
- [RPA - Robotic Process Automation](rpa.md) - This is the Robitic Process Automation Plugin for World of Workflows. It uses Playwright to automate web applications.  It supports 3 browser types (Chromium, Edgium and Firefox) and using the available activities, almost anything you can do on a website can be automated. 
- [PowerShell](powershell.md) - A Plugin that allows running of Powershell scripts from within World of Workflows
- [OpenAI](openai.md) - A Plugin that provides access to ChatGPT. Users will need to have registered with OpenAI and will need an API Key

# Plugin Developmnent


[Plugin Development](plugin_development.md) describes getting started with developing your own plugin.  You are invited to write your own World of Workflows plugins to extend the functionality of your workflows.  
