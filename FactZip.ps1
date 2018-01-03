# ---------------------------------------------------------------
# Script: Factorio Modzipping for advanced-atomics
# Author: MadUrban,drbert
# comments: .Net Framework 4.5 required
#----------------------------------------------------------------
$mydocuments = [Environment]::GetFolderPath('MyDocuments')

$source = "$mydocuments\github\advanced-atomics\data"
$info = Get-Content "$source\info.json" | ConvertFrom-Json

$destination = "$mydocuments\github\advanced-atomics\bin\advanced-atomics_$($info.version).zip"
$modfolder = "$env:APPDATA\factorio\mods\"

#If(Test-path $destination) {Remove-item $destination}
Add-Type -assembly "system.io.compression.filesystem"
[system.io.compression.zipfile]::CreateFromDirectory($source, $destination)

Copy-Item $destination $modfolder