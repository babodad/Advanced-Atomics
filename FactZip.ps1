# ---------------------------------------------------------------
# Script: Factorio Modzipping for cheesecake
# Author: MadUrban
# comments: .Net Framework 4.5 required
#----------------------------------------------------------------
$mydocuments = [Environment]::GetFolderPath('MyDocuments')
$source = $mydocuments + "\github\cheesecake\data"
$destination = $mydocuments + "\github\cheesecake\bin\Cheesecake_0.1.0.zip"
$modfolder = $env:APPDATA + "\factorio\mods\"

If(Test-path $destination) {Remove-item $destination}
Add-Type -assembly "system.io.compression.filesystem"
[system.io.compression.zipfile]::CreateFromDirectory($source, $destination)

Copy-Item $destination $modfolder