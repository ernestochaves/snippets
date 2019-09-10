#Copy specific files from folder (minus the folder)
 Get-ChildItem C:\MyFolder\ -recurse -filter SomeFileName.* | Copy-Item -Destination C:\myfolderdest\
