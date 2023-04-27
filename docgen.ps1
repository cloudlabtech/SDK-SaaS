# Restore 
Write-Host "Restoring project CloudLab.SDK.SaaS..." -Foreground yellow
dotnet restore ./src/CloudLab.SDK.SaaS/CloudLab.SDK.SaaS.csproj

Write-Host "Restoring project CloudLab.SDK.MongoDB..." -Foreground yellow
dotnet restore ./src/CloudLab.SDK.MongoDB/CloudLab.SDK.MongoDB.csproj

# Build
$BUILD_CONFIG = "Release"

Write-Host "Building project CloudLab.SDK.SaaS..." -Foreground yellow
dotnet build ./src/CloudLab.SDK.SaaS/CloudLab.SDK.SaaS.csproj --configuration $BUILD_CONFIG --no-restore

Write-Host "Building project CloudLab.SDK.MongoDB..." -Foreground yellow
dotnet build ./src/CloudLab.SDK.MongoDB/CloudLab.SDK.MongoDB.csproj --configuration $BUILD_CONFIG --no-restore

# Generate Markdown files from Xml Documentation files
Write-Host "Converting Xml documentation to Markdown for CloudLab.SDK.SaaS..." -Foreground yellow
xmldoc2md ./src/CloudLab.SDK.SaaS/bin/Release/net6.0/CloudLab.SDK.SaaS.dll ./src/CloudLab.SDK.SaaS/bin/Release/net6.0/docs

Write-Host "Converting Xml documentation to Markdown for CloudLab.SDK.MongoDB..." -Foreground yellow
xmldoc2md ./src/CloudLab.SDK.MongoDB/bin/Release/net6.0/CloudLab.SDK.MongoDB.dll ./src/CloudLab.SDK.MongoDB/bin/Release/net6.0/docs

# Create Markdown files for Wiki

# CloudLab.SDK.SaaS documentation
Write-Host "Updating URLS on auto-generated Markdown files for CloudLab.SDK.SaaS wiki..." -Foreground yellow
$FILE_PATH = "./src/CloudLab.SDK.SaaS/bin/Release/net6.0/docs/*.md"
Get-ChildItem $FILE_PATH -Recurse | ForEach-Object { (Get-Content $_).Replace("(./cloudlab.sdk.saas", "(https://github.com/cloudlabtech/SDK-SaaS/wiki/cloudlab.sdk.saas") | Set-Content $_ }

Write-Host "Copying auto-generated Markdown files for CloudLab.SDK.SaaS wiki..." -Foreground yellow
$FILES = Copy-Item -Path ./src/CloudLab.SDK.SaaS/bin/Release/net6.0/docs/* -Destination ./wiki -Exclude index.md -Force -PassThru | ?{$_ -is [System.IO.FileInfo]}
$FILES

Write-Host "Creating Markdown index file for CloudLab.SDK.SaaS wiki..." -Foreground yellow
New-Item -Path ./wiki -Name cloudlab.sdk.saas.index.md -ItemType "file" -Value "# CloudLab.SDK.SaaS Documentation`r`nThis is the index page of the source-code documentation for the **CloudLab.SDK.SaaS** library.`r`n`n" -Force
$SAAS_MD_INDEX = Get-Content -Path ./src/CloudLab.SDK.SaaS/bin/Release/net6.0/docs/index.md | Select -Skip 2
Add-Content -Path ./wiki/cloudlab.sdk.saas.index.md -Value $SAAS_MD_INDEX

Write-Host "Removing auto-generated Markdown files for CloudLab.SDK.SaaS Release folder..." -Foreground yellow
Remove-Item ./src/CloudLab.SDK.SaaS/bin/Release/net6.0/docs/ -Recurse

# CloudLab.SDK.MongoDB documentation
Write-Host "Updating URLS on auto-generated Markdown files for CloudLab.SDK.MongoDB wiki..." -Foreground yellow
$FILE_PATH = "./src/CloudLab.SDK.MongoDB/bin/Release/net6.0/docs/*.md"
Get-ChildItem $FILE_PATH -Recurse | ForEach-Object { (Get-Content $_).Replace("(./cloudlab.sdk.mongodb", "(https://github.com/cloudlabtech/SDK-SaaS/wiki/cloudlab.sdk.mongodb") | Set-Content $_ }

Write-Host "Copying auto-generated Markdown files for CloudLab.SDK.MongoDB wiki..." -Foreground yellow
$FILES = Copy-Item -Path ./src/CloudLab.SDK.MongoDB/bin/Release/net6.0/docs/* -Destination ./wiki -Exclude index.md -Force -PassThru | ?{$_ -is [System.IO.FileInfo]}
$FILES

Write-Host "Creating Markdown index file for CloudLab.SDK.MongoDB wiki..." -Foreground yellow
New-Item -Path ./wiki -Name cloudlab.sdk.mongodb.index.md -ItemType "file" -Value "# CloudLab.SDK.MongoDB Documentation`r`nThis is the index page of the source-code documentation for the **CloudLab.SDK.MongoDB** library.`r`n`n" -Force
$MONGODB_MD_INDEX = Get-Content -Path ./src/CloudLab.SDK.MongoDB/bin/Release/net6.0/docs/index.md | Select -Skip 2
Add-Content -Path ./wiki/cloudlab.sdk.mongodb.index.md -Value $MONGODB_MD_INDEX

Write-Host "Removing auto-generated Markdown files for CloudLab.SDK.MongoDB Release folder..." -Foreground yellow
Remove-Item ./src/CloudLab.SDK.MongoDB/bin/Release/net6.0/docs/ -Recurse


Write-Host "*** DONE! ***" -Foreground yellow