---
title: Email
layout: default
nav_order: 6
parent: Workflow Activities
has_children: false
---

# Email
The Email collection of activities allows you to work with traditional SMTP Email systems. It expects the SMTP Server to be configured in appsettings.json or environment variables if using World of workflows on Azure. 

> **Note**: We recommend using Office 365 send email, and only use this activity with legacy SMTP Email.

## Send Email
**Description:** Send an email message.

**Category:** Email

**Properties:**
- **From**: The sender's email address.
- **To**: The recipients email addresses.
- **Cc**: The cc recipients email addresses.
- **Bcc**: The Bcc recipients email addresses.
- **Subject**: The subject of the email message.
- **Attachments**: The attachments to send with the email message. Can be (an array of) a fully-qualified file path, URL, stream, byte array or instances of EmailAttachment.
- **Body**: The body of the email message.

**Input Properties:**
- **From**: The sender's email address.
- **To**: The recipients email addresses.
- **Cc**: The cc recipients email addresses.
- **Bcc**: The Bcc recipients email addresses.
- **Subject**: The subject of the email message.
- **Attachments**: The attachments to send with the email message. Can be (an array of) a fully-qualified file path, URL, stream, byte array or instances of EmailAttachment.
- **Body**: The body of the email message.
