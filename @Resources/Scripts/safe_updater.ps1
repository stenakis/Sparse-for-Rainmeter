$source = 'https://github.com/SafehouseCT/Sparse-for-Rainmeter/archive/refs/heads/main.zip'
$destination = $env:TEMP
Write-Output ''
Write-Output 'Safe Installer 1.2'
Write-Output 'Created by Evans Stenakis'
Write-Output 'Developed by Safehouse Creative Team'
Write-Output ''
#Write-Output 'Warning: BackUp does not work properly at the moment.'
<#Do {
    $backUp = Read-Host 'Do you want to back up the current version? (Y/N)'
    if ($backUp -eq 'Y') {
        New-Item -Path 'Documents\Rainmeter\Skins\@Backup\Sparse' -ItemType Directory -Force
        Copy-Item 'Documents\Rainmeter\Skins\Sparse' 'Documents\Rainmeter\Skins\@Backup' -Recurse -force
    }
}Until (($backUp -eq 'Y') -or ($backUp -eq 'N'))#>
Write-Output 'Downloading...'
Invoke-WebRequest -Uri $source -OutFile $destination\Sparse.zip
Write-Output 'Installing...'
Expand-Archive $destination\Sparse.zip -DestinationPath $destination
Rename-Item $destination\Sparse-for-Rainmeter-main $destination\Sparse
Remove-Item $destination\Sparse.zip
Copy-Item $destination\Sparse $env:USERPROFILE\Documents\Rainmeter\Skins -Recurse -force
#Copy-Item $destination\Sparse\@Vault\Plugins\* $env:USERPROFILE\Documents\Rainmeter\Skins\@Vault\Plugins -Recurse -force
#Remove-Item $destination\@Vault -Recurse -force
Remove-Item $destination\Sparse -Recurse -force
#Remove-Item $env:USERPROFILE\Documents\Rainmeter\Skins\Sparse\@Vault -Recurse -force
Write-Output 'Done!'
Write-Output 'Make sure to Refresh All from Rainmeter!'
Write-Output 'Press any key to exit...';
$null = $Host.UI.RawUI.ReadKey('NoEcho,IncludeKeyDown')