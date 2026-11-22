# Optional standalone private-repository publisher; DO NOT run in the
# existing weekend-sessions repository. Requires Git and GitHub CLI.
$ErrorActionPreference = "Stop"
Set-Location -LiteralPath $PSScriptRoot
$repo = "dashrathdj91-hue/ai-agent-bootcamp-portfolio"

if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
    throw "Install Git for Windows from https://git-scm.com/download/win"
}
if (-not (Get-Command gh -ErrorAction SilentlyContinue)) {
    throw "Install GitHub CLI from https://cli.github.com/"
}
& gh auth status *> $null
if ($LASTEXITCODE -ne 0) {
    & gh auth login
    if ($LASTEXITCODE -ne 0) { throw "GitHub authentication failed" }
}
$account = (& gh api user --jq '.login').Trim()
if ($account -ne "dashrathdj91-hue") {
    throw "Wrong GitHub account: $account"
}
& gh repo view $repo *> $null
if ($LASTEXITCODE -eq 0) {
    throw "Repository already exists; nothing changed to prevent overwriting."
}
if (-not (Test-Path .git)) { & git init -b main }
& git config user.name "Dashrath Kumar"
& git config user.email "255627751+dashrathdj91-hue@users.noreply.github.com"
& git add .
& git commit -m "Add local agentic AI bootcamp portfolio"
if ($LASTEXITCODE -ne 0) { throw "Git commit failed" }
& gh repo create $repo --private --source . --remote origin --push
if ($LASTEXITCODE -ne 0) { throw "GitHub publish failed" }
Write-Host "Published to https://github.com/$repo (PRIVATE)"
