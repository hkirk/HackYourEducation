param ($src_path, $dest_path)

Write-Host($args)

New-Item -Path $dest_path -ItemType Directory -Force | Out-Null
Push-Location $src_path
foreach($file in Get-ChildItem) {
  Write-Host "Copying $file to $dest_path/$($file.Name)"
  Copy-Item $file -Destination $dest_path
}

Pop-Location
