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
Write-Host "Removing wiki docs folder..." -Foreground yellow
Remove-Item -LiteralPath ./wiki/docs -Force -Recurse

Write-Host "Creating wiki docs folder..." -Foreground yellow
New-Item -ItemType "directory" -Path ./wiki/docs -Force

# CloudLab.SDK.SaaS documentation
Write-Host "Copying auto-generated Markdown files for CloudLab.SDK.SaaS wiki docs folder..." -Foreground yellow
$FILES = Copy-Item -Path ./src/CloudLab.SDK.SaaS/bin/Release/net6.0/docs/* -Destination ./wiki/docs -Recurse -Exclude index.md -Force -PassThru | ?{$_ -is [System.IO.FileInfo]}
$FILES

Write-Host "Creating Markdown index file for CloudLab.SDK.SaaS wiki docs folder..." -Foreground yellow
New-Item -Path ./wiki/docs/ -Name cloudlab.sdk.saas.index.md -ItemType "file" -Value "# CloudLab.SDK.SaaS Documentation`r`nThis is the index page of the source-code documentation for the **CloudLab.SDK.SaaS** library.`r`n`n" -Force
$SAAS_MD_INDEX = Get-Content -Path ./src/CloudLab.SDK.SaaS/bin/Release/net6.0/docs/index.md | Select -Skip 2
$SAAS_MD_CONTENT = $SAAS_MD_INDEX.replace("(./cloudlab.sdk.saas", "(./docs/cloudlab.sdk.saas")
Add-Content -Path ./wiki/docs/cloudlab.sdk.saas.index.md -Value $SAAS_MD_CONTENT

Write-Host "Removing auto-generated Markdown files for CloudLab.SDK.SaaS for Release folder..." -Foreground yellow
Remove-Item ./src/CloudLab.SDK.SaaS/bin/Release/net6.0/docs/ -Recurse

# CloudLab.SDK.SaaS documentation
Write-Host "Copying auto-generated Markdown files for CloudLab.SDK.MongoDB wiki docs folder..." -Foreground yellow
$FILES = Copy-Item -Path ./src/CloudLab.SDK.MongoDB/bin/Release/net6.0/docs/* -Destination ./wiki/docs -Recurse -Exclude index.md -Force -PassThru | ?{$_ -is [System.IO.FileInfo]}
$FILES

Write-Host "Creating Markdown index file for CloudLab.SDK.MongoDB wiki docs folder..." -Foreground yellow
New-Item -Path ./wiki/docs/ -Name cloudlab.sdk.mongodb.index.md -ItemType "file" -Value "# CloudLab.SDK.MongoDB Documentation`r`nThis is the index page of the source-code documentation for the **CloudLab.SDK.MongoDB** library.`r`n`n" -Force
$MONGODB_MD_INDEX = Get-Content -Path ./src/CloudLab.SDK.MongoDB/bin/Release/net6.0/docs/index.md | Select -Skip 2
$MONGODB_MD_CONTENT = $MONGODB_MD_INDEX.replace("(./cloudlab.sdk.mongodb", "(./docs/cloudlab.sdk.mongodb")
Add-Content -Path ./wiki/docs/cloudlab.sdk.mongodb.index.md -Value $MONGODB_MD_CONTENT

Write-Host "Removing auto-generated Markdown files for CloudLab.SDK.SaaS for Release folder..." -Foreground yellow
Remove-Item ./src/CloudLab.SDK.MongoDB/bin/Release/net6.0/docs/ -Recurse

Write-Output "*** DONE! ***" -Foreground yellow -Background 