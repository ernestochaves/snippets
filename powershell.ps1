#Copy specific files from folder (minus the folder)
 Get-ChildItem C:\MyFolder\ -recurse -filter SomeFileName.* | Copy-Item -Destination C:\myfolderdest\
 
#cool VS build from PS 
#https://github.com/cknightdevelopment/KnightCodesExamples/tree/master/Miscellaneous/Build%20Solutions%20and%20Projects%20With%20PowerShell
#Build a project: see https://knightcodes.com/miscellaneous/2016/09/05/build-solutions-and-projects-with-powershell.html 
# nuget restore, clean solution, and build solution
buildVS .\path\to\solution.sln
# clean solution and build solution
buildVS .\path\to\solution.sln $false $true
# build solution
buildVS -path .\path\to\solution.sln -nuget $false -clean $false
# nuget restore and build solution
buildVS -path .\path\to\solution.sln -clean $false
