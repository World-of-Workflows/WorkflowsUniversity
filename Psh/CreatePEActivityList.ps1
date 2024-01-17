
# The URL of the JSON endpoint
$jsonUrl = "https://localhost:7063/v1/activities"

# Fetch JSON from URL
$json = Invoke-RestMethod -Uri $jsonUrl

# Rest of the script remains the same

# Convert JSON string to PowerShell Object
$activities = $json

# Markdown Header
$markdown = "## Activities`nThe following workflow activities are available:`n`n"

# Iterate through each activity
foreach ($activity in $activities) {
    $markdown += "### $($activity.displayName)`n"
    $markdown += "$($activity.description)`n`n"
    $markdown += "**Category:** $($activity.category)`n`n"

    # Input Parameters
    if ($activity.inputProperties.Count -gt 0) {
        $markdown += "#### Input Parameters`n`n"
        $markdown += "| Name | Type | Label | Hint | ReadOnly | Browsable |`n"
        $markdown += "| -- | -- | -- | -- | -- | -- |`n"
        foreach ($input in $activity.inputProperties) {
            $markdown += "| $($input.name) | $($input.type) | $($input.label) | $($input.hint) | $($input.isReadOnly) | $($input.isBrowsable) |`n"
        }
        $markdown += "`n"
    } else {
        $markdown += "**There are no input parameters**`n`n"
    }

    # Output Parameters
    if ($activity.outputProperties.Count -gt 0) {
        $markdown += "#### Output Parameters`n`n"
        $markdown += "| Name | Type | Hint |`n"
        $markdown += "| -- | -- | -- |`n"
        foreach ($output in $activity.outputProperties) {
            $markdown += "| $($output.name) | $($output.type) | $($output.hint) |`n"
        }
        $markdown += "`n"
    } else {
        $markdown += "**There are no Output parameters**`n`n"
    }

    # Outcomes
    if ($activity.outcomes.Count -gt 0) {
        $markdown += "#### Outcomes`n`n"
        foreach ($outcome in $activity.outcomes) {
            $markdown += "- $outcome`n"
        }
    }
    $markdown += "`n"
}

$markdownFilePath = ".\activity-guide.md"

# Output the Markdown to the specified file
$markdown | Out-File -FilePath $markdownFilePath