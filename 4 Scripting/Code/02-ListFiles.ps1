# Set current working directory
Set-Location -Path /Users/au299473/Workspace/hack-your-cs-education/code/scripting/data

# Print directory content to console
foreach($file in Get-ChildItem) {
  Write-Host $file
}

# Write file content to out_file
$out_file = New-Item -Path '../out/out_file.txt' -Force
foreach($file in Get-ChildItem) {
  Get-Content $file | Out-File -Path $out_file -Append
}
