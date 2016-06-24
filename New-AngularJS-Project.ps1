$prjfolder=$args[0]
if(!$prjfolder){
  $prjfolder = Read-Host -prompt "Target Project Folder"
}

if(Test-Path -Path $prjfolder){
  Get-ChildItem -Include * -Path $prjfolder -Recurse | foreach { $_.Delete()}
}
copy-item c:\git\angular-quickstart $prjfolder -container:$false -recurse

Write-Host $prjfolder "updated"