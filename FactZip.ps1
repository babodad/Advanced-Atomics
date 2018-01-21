# ---------------------------------------------------------------
# Script: Factorio Universal Modzipping 
# Author: MadUrban,drbert
# comments: .Net Framework 4.5 required
#----------------------------------------------------------------

#--- path declarations ------------------------------------------
$7zdir = "$env:ProgramFiles\7-Zip\7z.exe"
$bindir = ".\bin" 
$datadir = ".\data"
$tempdir = ".\temp"
$modfolder = "$env:APPDATA\factorio\mods\"


#--- script-block -----------------------------------------------

$info = Get-Content "$datadir\info.json" -Raw | ConvertFrom-Json
$buildname = "$($info.name)_$($info.version)"
$sourcedir = "$tempdir\$buildname"
copy-item $datadir $sourcedir -Recurse -Force

if (test-path $7zdir) {
    set-alias 7z $7zdir  
    7z a -mx=9 "$sourcedir.zip" "$tempdir\$buildname"
    Copy-Item "$sourcedir.zip" $bindir
}
else {
    Write-Waring "Could not locate $7zdir - Using native compression.. - Use only for local test!"
    Add-Type -assembly "system.io.compression.filesystem"
    [system.io.compression.zipfile]::CreateFromDirectory($tempdir, "$sourcedir.zip")
}

Copy-Item "$sourcedir.zip" $modfolder

#Check and log to console
if(Test-path "$modfolder\$buildname.zip") {Write-Output "New build $buildname created in $modfolder."}
else {Write-Output "No new build found/created!" }

#Burn after reading
Remove-item -path $tempdir -Recurse

#Run Factorio
explorer.exe steam://rungameid/427520
