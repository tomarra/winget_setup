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

$masterIdList = $basicsIds + $developmentToolsIds + $gamesIds

foreach ($id in $masterIdList) {
    winget install --id $id -e
}