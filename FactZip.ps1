# ---------------------------------------------------------------
# Script: Factorio Modzipping for advanced-atomics
# Author: MadUrban,drbert
# comments: .Net Framework 4.5 required
#----------------------------------------------------------------
$mydocuments = [Environment]::GetFolderPath('MyDocuments')
$sourcedata = "$mydocuments\github\advanced-atomics\data"
$modfolder = "$env:APPDATA\factorio\mods\"

$info = Get-Content "$sourcedata\info.json" -Raw | ConvertFrom-Json
$sourcedir = "$mydocuments\github\advanced-atomics\bin\Advanced-Atomics_$($info.version)"
copy-item $sourcedata $sourcedir -Recurse -Force

$destination = "$sourcedir.zip"

If(Test-path $destination) {Remove-item $destination}
Add-Type -assembly "system.io.compression.filesystem"
[system.io.compression.zipfile]::CreateFromDirectory($sourcedir, $destination)

Copy-Item $destination $modfolder

If(Test-path $destination) {Remove-item $destination}
If(Test-path $sourcedir) {Remove-item -path $sourcedir -Recurse}