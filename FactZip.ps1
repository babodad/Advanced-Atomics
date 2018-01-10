# ---------------------------------------------------------------
# Script: Factorio Modzipping for advanced-atomics
# Author: MadUrban,drbert
# comments: .Net Framework 4.5 required
#----------------------------------------------------------------
$mydocuments = [Environment]::GetFolderPath('MyDocuments')

$source = "$mydocuments\github\advanced-atomics\data\Advanced-Atomics"
$info = Get-Content "$source\info.json" -Raw | ConvertFrom-Json

$destination = "$mydocuments\github\advanced-atomics\bin\Advanced-Atomics_$($info.version).zip"
$modfolder = "$env:APPDATA\factorio\mods\"

If(Test-path $destination) {Remove-item $destination}
Add-Type -assembly "system.io.compression.filesystem"
[system.io.compression.zipfile]::CreateFromDirectory($source, $destination)

Copy-Item $destination $modfolder