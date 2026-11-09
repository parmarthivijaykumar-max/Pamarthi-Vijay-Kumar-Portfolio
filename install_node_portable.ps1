$zipUrl = 'https://nodejs.org/dist/v20.15.1/node-v20.15.1-win-x64.zip'
$zipPath = "$env:TEMP\node.zip"
$dest = 'c:\Users\parma\Music\vportfolio\node'

Write-Host "Downloading Node.js..."
Invoke-WebRequest -Uri $zipUrl -OutFile $zipPath -UseBasicParsing

Write-Host "Extracting..."
Expand-Archive -Path $zipPath -DestinationPath $dest -Force

# The zip contains a folder named node-v20.15.1-win-x64; move its contents up
$extractedFolder = Get-ChildItem $dest | Where-Object { $_.PSIsContainer } | Select-Object -First 1
if ($extractedFolder) {
    Move-Item -Path "$extractedFolder\*" -Destination $dest -Force
    Remove-Item $extractedFolder -Force -Recurse
}

Write-Host "Node installed at $dest"
