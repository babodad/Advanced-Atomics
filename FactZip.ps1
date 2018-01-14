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
copy-item $sourcedata $sourcedir\Advanced-Atomics_$($info.version) -Recurse -Force

$destination = "$sourcedir.zip"

If(Test-path $destination) {Remove-item $destination}
Add-Type -assembly "system.io.compression.filesystem"
[system.io.compression.zipfile]::CreateFromDirectory($sourcedir, $destination)

Copy-Item $destination $modfolder

#Check and log to console
If(Test-path "$env:APPDATA\factorio\mods\Advanced-Atomics_$($info.version).zip") {Write-Output "New build Advanced_Atomics_$($info.version).zip created in $modfolder."}
else {Write-Output "No new build found/created!" }

#Burn after reading
If(Test-path $destination) {Remove-item $destination}
If(Test-path $sourcedir) {Remove-item -path $sourcedir -Recurse}

If($env:computername.contains("HAL")) {& "D:\Games\SteamLibrary\steamapps\common\Factorio\bin\x64\factorio.exe"}