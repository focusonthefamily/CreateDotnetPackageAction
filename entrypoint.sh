#!/bin/bash
set -euxo pipefail
workingDirectory=$(pwd)
cd $(find $workingDirectory -type f -name '*.sln' | dirname xargs-0)
dotnet restore
dotnet test
dotnet publish --no-restore -r linux-x64 --configuration Release --self-contained true
cd $(find $workingDirectory -type d -name 'publish' -path *$1*)
zip -r release.zip .
mv release.zip $workingDirectory/release.zip
cd $workingDirectory