$source = 'https://github.com/SafehouseCT/Sparse-for-Rainmeter/archive/refs/heads/main.zip'
$destination = $env:TEMP
Write-Output ''
Write-Output 'Safe Sparse Installer'
Invoke-WebRequest -Uri $source -OutFile $destination\Sparse.zip
Expand-Archive $destination\Sparse.zip -DestinationPath $destination
Rename-Item $destination\Sparse-for-Rainmeter-main $destination\Sparse
Remove-Item $destination\Sparse.zip
Copy-Item $destination\Sparse $env:USERPROFILE\Documents\Rainmeter\Skins -Recurse -force
Remove-Item $destination\Sparse -Recurse -force
Exit
