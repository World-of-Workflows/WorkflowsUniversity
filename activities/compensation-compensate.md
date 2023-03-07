# Compensate

Whenever an activity faults, any upper Compensable activity in its inbound branch will have its Compensate outcome scheduled for execution.

However, this is not always enough. Some activities can have an e.g. "Error" outcome. For example, the SendHttpRequest activity lets the user handle HTTP 500 status codes as an outcome. It is reasonable to allow the user to undo work that was done earlier in the workflow.