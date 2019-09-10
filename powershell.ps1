#Copy specific files from folder (minus the folder)
 Get-ChildItem C:\MyFolder\ -recurse -filter SomeFileName.* | Copy-Item -Destination C:\myfolderdest\
#Build a project: see https://knightcodes.com/miscellaneous/2016/09/05/build-solutions-and-projects-with-powershell.html 
# nuget restore, clean solution, and build solution
buildVS .\path\to\solution.sln
# clean solution and build solution
buildVS .\path\to\solution.sln $false $true
# build solution
buildVS -path .\path\to\solution.sln -nuget $false -clean $false
# nuget restore and build solution
buildVS -path .\path\to\solution.sln -clean $false
