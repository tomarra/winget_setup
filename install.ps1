# Package ID's

$basicsIds = @(
    "Microsoft.Edge"
    "Spotify.Spotify",
    "SlackTechnologies.Slack"
)

$developmentToolsIds = @(
    "Microsoft.WindowsTerminal",
    "Microsoft.VisualStudioCode",
    "Git.Git"
)

$gamesIds = @(
    "Valve.Steam"
)

$visualStudioCodeExtensionIds = @(
    "ginfuru.ginfuru-vscode-jekyll-syntax",
    "ms-vscode.powershell",
    "streetsidesoftware.code-spell-checker",
    "yzhang.markdown-all-in-one"
)

# Application Install 

$masterIdList = $basicsIds + $developmentToolsIds + $gamesIds
foreach ($id in $masterIdList) {
    winget install --id $id -e
}

# Extension Configuration

foreach ($id in $visualStudioCodeExtensionIds) {
    code --install-extension $id
}

