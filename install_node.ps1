$url = 'https://nodejs.org/dist/v20.15.1/node-v20.15.1-x64.msi'
$dest = "$env:TEMP\node.msi"
Invoke-WebRequest -Uri $url -OutFile $dest
Start-Process -FilePath 'msiexec.exe' -ArgumentList @('/i', $dest, '/quiet', '/norestart') -Wait
